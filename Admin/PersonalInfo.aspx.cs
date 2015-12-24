using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registration_PersonalInfo : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["email"] == null || Session["email"] == "")
            {
                Response.Redirect("~/Registration/login.aspx");
            }
            txtemail.Text = Session["email"].ToString();
            cn.Open();
            SqlDataReader dr;
            SqlCommand cmd = new SqlCommand("select * from personalInfo where email='" + Session["email"].ToString() + "'", cn);
            dr = cmd.ExecuteReader();
            dr.Read();
            txtfnm.Text = dr[1].ToString();
            txtlnm.Text = dr[2].ToString();
            txtbd.Text = dr[4].ToString();
            if (dr[3].ToString() == "M")
            {
                RadioButton1.Checked = true;
            }
            else
            {
                RadioButton2.Checked = true;
            }
            string mnum = dr[5].ToString();
            mnum = mnum.Substring(2);
            txtmno.Text = mnum.ToString();

            string lnum = dr[6].ToString();
            lnum = lnum.Substring(2);
            txtlno.Text = lnum.ToString();

            dr.Close();
        }
    }
    protected void btninfo_Click(object sender, EventArgs e)
    {
        cn.Open();
        try
        {
            string gn;
            if (RadioButton1.Checked == true)
            {
                gn = "M";
            }
            else
            {
                gn = "F";
            }
            string mno1 = TextBox1.Text;
            string mno = mno1 + txtmno.Text;
            string lno = TextBox2.Text + txtlno.Text;
            //cmd = new SqlCommand("insert into personalInfo values('"+txtemail.Text+"','"+txtfnm.Text+"','"+txtlnm.Text+"',"+gn+",'"+txtbd.Text+"',"+Convert.ToInt32(txtmno.Text)+","+Convert.ToInt32(txtlno.Text)+")",cn);
            cmd = new SqlCommand("update personalInfo set email='" + txtemail.Text + "',fname='" + txtfnm.Text + "',lname='" + txtlnm.Text + "',gender='" + gn + "',bdate='" + txtbd.Text + "',mno=" + mno + ",lno=" + lno + "where email='" + Session["email"].ToString() + "'", cn);
            cmd.ExecuteNonQuery();
            Session["fnm"] = txtfnm.Text;
            Session["lnm"] = txtlnm.Text;
            Label1.Text = "Personal Information Saved...";
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
            Label1.Text = "Error While Saving Record";
        }
        txtlnm.Text = "";
        txtfnm.Text = "";
        txtbd.Text = "";
        RadioButton1.Checked = true;
        RadioButton2.Checked = false;
        txtmno.Text = "";
        txtlno.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtlnm.Text = "";
        txtfnm.Text = "";
        txtbd.Text = "";
        RadioButton1.Checked = true;
        RadioButton2.Checked = false;
        txtmno.Text = "";
        txtlno.Text = "";
        Label1.Text = "";
    }
}