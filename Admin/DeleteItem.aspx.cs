using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_DeleteItem : System.Web.UI.Page
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
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("delete from book_mst where book_id='" + txtbid.Text + "'", cn);
        cmd.ExecuteNonQuery();
        Label1.Text = "Record Deleted successfully";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        str = DropDownList1.SelectedItem.Text;
        try
        {
            SqlDataReader dr;
            str = DropDownList1.SelectedItem.Text;
            SqlCommand cmd = new SqlCommand("select * from book_mst where book_id='" + str + "'", cn);
            dr = cmd.ExecuteReader();
            dr.Read();
            txtbid.Text = dr[0].ToString();
            txtbnm.Text = dr[1].ToString();
            txtaut.Text = dr[2].ToString();
            txtpri.Text = dr[3].ToString();
            txtdesc.Text = dr[4].ToString();
            txtstk.Text = dr[6].ToString();

        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
    protected void btnCan_Click(object sender, EventArgs e)
    {
        txtbid.Text = "";
        txtbnm.Text = "";
        txtaut.Text = "";
        txtpri.Text = "";
        txtdesc.Text = "";
        txtstk.Text = "";
        DropDownList1.SelectedIndex = 0;
    }
}