using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registration_login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
        SqlDataAdapter da;
        DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (txtemail.Text != "" && txtpass.Text != "")
        {
            da = new SqlDataAdapter("select * from login where email='" + txtemail.Text + "'and pass='" + txtpass.Text + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "login");
            if (ds.Tables[0].Rows.Count == 0)
            {
                Label1.Text = "Invalid E-mail or Password";
            }
            else
            {
                string st = ds.Tables[0].Rows[0][0].ToString();
                string str = ds.Tables[0].Rows[0][2].ToString();

                if (st == "ankit4baps@gmail.com" && str == "dharan")
                {
                    Session["email"] = st;
                    Session["pass"] = str;
                    Response.Redirect("~/Admin/InsertItem.aspx");
                }
                else
                {
                    Session["email"] = st;
                    Response.Redirect("~/Home.aspx");                    
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtemail.Text = "";
        txtpass.Text = "";
    }
}