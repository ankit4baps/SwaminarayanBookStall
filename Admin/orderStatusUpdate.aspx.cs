using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_orderStatusUpdate : System.Web.UI.Page
{
    string str;
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        if (Session["email"] == null || Session["email"] == "")
        {
            Response.Redirect("~/Registration/login.aspx");
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        str = ddlId.SelectedItem.Text;
        SqlCommand cmd = new SqlCommand("update order_Details set order_Status='" + ddlStatus.SelectedItem.Text + "' where order_Id='" + str + "'", cn);
        cmd.ExecuteNonQuery();
        Label1.Text = "Order Status Updated Successfully...";
    }
    protected void btnCan_Click(object sender, EventArgs e)
    {
        txtoid.Text = "";
        txtemail.Text = "";
        txtodate.Text = "";
        txtoamount.Text = "";
        ddlStatus.SelectedIndex = -1;
    }
    protected void ddlId_SelectedIndexChanged1(object sender, EventArgs e)
    {
        str = ddlId.SelectedItem.Text;
        long tot=0;
        try
        {
            SqlDataReader dr;
            SqlCommand cmd = new SqlCommand("select order_Id,email,order_date,subTotal from order_Details where order_Id='" + str + "'", cn);
            dr = cmd.ExecuteReader();
            dr.Read();
            txtoid.Text = str.ToString();
            txtemail.Text = dr[1].ToString();
            txtodate.Text = dr[2].ToString();
            //do
            //{
            //    tot = tot + Convert.ToInt64(dr[3].ToString());
            //    tot++;
            //}
            //while (dr.Read());
            long total = Convert.ToInt64(dr[3].ToString());
            for (int i = 0; dr.Read();++i )
            {
                tot += Convert.ToInt64(dr[3].ToString());
            }
            long total1 = total + tot;
            txtoamount.Text = total1.ToString();
        }
        catch (Exception ex)
        {

        }
    }
}