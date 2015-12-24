using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registration_NewUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnuser_Click(object sender, EventArgs e)
    {
        string pwd = txtpass.Text;
        string rpwd = txtrpwd.Text;
        if (pwd == rpwd)
        {
            try
            {
                SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
                cn.Open();
                SqlCommand cmd = new SqlCommand("insert into login values('" + txtemail.Text + "','" + txtunm.Text + "','" + txtpass.Text + "','" + DropDownList1.SelectedItem + "','" + txtans.Text + "')", cn);
                cmd.ExecuteNonQuery();
                Label1.Text = "New User Created Successfully";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
        else 
        {
            Label1.Text = "Both the password Must be Same";
        }
        txtemail.Text = "";
        txtunm.Text = "";
        txtpass.Text = "";
        txtrpwd.Text = "";
        txtrpwd.Text = "";
        DropDownList1.SelectedIndex = 0;
        txtans.Text = "";
    }
}