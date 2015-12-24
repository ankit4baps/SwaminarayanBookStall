using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registration_changePass : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null || Session["email"] == "")
        {
            Response.Redirect("~/Registration/login.aspx");
        }
        txtemail.Text = Session["email"].ToString();
        cn.Open();
    }
    protected void btnChange_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtNpass.Text == txtrpwd.Text)
            {
                cmd = new SqlCommand("update login set pass='" + txtNpass.Text + "' where email='"+txtemail.Text+"'", cn);
                cmd.ExecuteNonQuery();
                Label1.Text = "Your Password changed";
            }
            else
            {
                Label1.Text = "Please enter Both the Same Password";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}