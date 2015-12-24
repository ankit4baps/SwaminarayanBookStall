using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class custOrderStatus : System.Web.UI.Page
{
    string str;
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
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
            ddlId.Items.Clear();
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
                btnShowOrder.Enabled = false;
            }
        }
        
    }
    protected void ddlId_SelectedIndexChanged(object sender, EventArgs e)
    {
        //str = ddlId.SelectedItem.Text;
        //SqlDataReader dr;
        //SqlCommand cmd = new SqlCommand("select email,order_date,order_Status from order_Details where order_Id='" + str + "'", cn);
        //dr = cmd.ExecuteReader();
        //dr.Read();
        //txtemail.Text = dr[0].ToString();
        //txtodate.Text = dr[1].ToString();
        //txtorderStatus.Text = dr[2].ToString();
    }
    protected void btnShowOrder_Click(object sender, EventArgs e)
    {
        str = ddlId.SelectedItem.Text;
        SqlDataReader dr;
        SqlCommand cmd = new SqlCommand("select email,order_date,order_Status from order_Details where order_Id='" + str + "'", cn);
        dr = cmd.ExecuteReader();
        dr.Read();
        txtemail.Text = dr[0].ToString();
        txtodate.Text = dr[1].ToString();
        txtorderStatus.Text = dr[2].ToString();
    }
}