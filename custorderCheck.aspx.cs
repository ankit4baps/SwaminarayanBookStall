using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class orderCheck : System.Web.UI.Page
{
    string str;
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    string ses;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        if (!IsPostBack)
        {

            if (Session["email"] == null || Session["email"] == "")
            {
                Response.Redirect("~/Registration/login.aspx");
            }
            ses = Session["email"].ToString();
            SqlDataReader dr;
            cmd = new SqlCommand("select order_Id from orderShipping where email='" + ses + "'", cn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                do
                {
                    ddlId.Items.Add(dr[0].ToString());
                }
                while (dr.Read());
            }
            else
            {
                btnShow.Enabled = false;
            }
            if (ddlId.Items.Equals(""))
            {
                Label1.Text = "You haven't placed any Order";
            }
        }

    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select item_id,item_nm,price,quantity from order_Details where order_Id='" + ddlId.SelectedItem.Text + "'", cn);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        ds = new DataSet();
        da.Fill(ds, "order_Details");
        GridView1.DataSource = ds;
        GridView1.DataBind();

        if (GridView1.Rows.Count < 1)
        {
            Label1.Text = "No orders Found";
        }
    }
    protected void ddlId_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}