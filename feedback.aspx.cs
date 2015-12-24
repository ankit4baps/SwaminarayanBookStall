using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class feedback : System.Web.UI.Page
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
            RadioButton1.Checked = true;
            RadioButton5.Checked = true;
        }
        //Response.Write(RadioButtonList1.SelectedValue.ToString());
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        RadioButton1.Checked = true;
        RadioButton5.Checked = true;
        txtrem.Text = "";
        DropDownList1.SelectedIndex = -1;
    }
    protected void btnfeed_Click(object sender, EventArgs e)
    {
        cn.Open();
        try
        {
            string var;
            string var1;
            if (RadioButton1.Checked == true)
            {
                var = "A";
            }
            else if (RadioButton2.Checked == true)
            {
                var = "B";
            }
            else if (RadioButton3.Checked == true)
            {
                var = "C";
            }
            else
            {
                var = "D";
            }

            if (RadioButton5.Checked == true)
            {
                var1 = "A";
            }
            else if (RadioButton6.Checked == true)
            {
                var1 = "B";
            }
            else if (RadioButton7.Checked == true)
            {
                var1 = "C";
            }
            else
            {
                var1 = "D";
            }
            cmd = new SqlCommand("insert into feedback_dtl values('" + txtemail.Text + "','" + var + "','" + var1 + "','" + txtrem.Text + "','"+DropDownList1.SelectedItem.ToString()+"')", cn);
            cmd.ExecuteNonQuery();
            Label1.Text = "Thank You...";
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
            Label1.Text = "Error While Saving Record";
        }
        RadioButton1.Checked = true;
        RadioButton5.Checked = true;
        txtrem.Text = "";
        DropDownList1.SelectedIndex = -1;
    }
}