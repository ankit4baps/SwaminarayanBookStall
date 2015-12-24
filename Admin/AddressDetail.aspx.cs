using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registration_AddressDetail : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    string st;
    string st1;
    string str;
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
            da = new SqlDataAdapter("select fname,lname from personalInfo where email='" + txtemail.Text + "'", cn);
            ds = new DataSet();
            da.Fill(ds, "addDetail");
            if (ds.Tables[0].Rows.Count == 0)
            {
                Label1.Text = "Please Save Your Personal Information Record";
                txtstadd.Enabled = false;
                txtcity.Enabled = false;
                txtta.Enabled = false;
                txtdist.Enabled = false;
                txtstate.Enabled = false;
                txtpin.Enabled = false;
            }
            else
            {
                st1 = " ";
                st = ds.Tables[0].Rows[0][0].ToString();
                str = st1 + ds.Tables[0].Rows[0][1].ToString();

                txtfnm.Text = st + str;
            }
            SqlDataReader dr;
            SqlCommand cmd = new SqlCommand("select * from addDetail where email='" + Session["email"].ToString() + "'", cn);
            dr = cmd.ExecuteReader();
            dr.Read();
            txtstadd.Text = dr[2].ToString();
            txtcity.Text = dr[3].ToString();
            txtta.Text = dr[4].ToString();
            txtdist.Text = dr[5].ToString();
            txtstate.Text = dr[6].ToString();
            txtpin.Text = dr[8].ToString();
        }
        else { }
    }
    protected void btnuser_Click(object sender, EventArgs e)
    {
        cn.Open();
        string fname = txtfnm.Text;
        try
        {
            cmd = new SqlCommand("update addDetail set email='" + Session["email"].ToString() + "',name='" + fname + "',stadd='" + txtstadd.Text + "',city='" + txtcity.Text + "',taluka='" + txtta.Text + "',dist='" + txtdist.Text + "',state='" + txtstate.Text + "',country='" + txtco.Text + "',pin='" + txtpin.Text + "' where email='" + Session["email"].ToString() + "'", cn);
            //cmd = new SqlCommand();
            //cmd.Connection = cn;
            //cmd.CommandText = "Update addDetail set email=@email,name=@name,stadd=@stadd,city=@city,taluka=@taluka,dist=@dist,state=@state,country=@country,pin=@pin where email='"+Session["email"].ToString()+"'";
            //cmd.Parameters.AddWithValue("@email",Session["email"].ToString());
            //cmd.Parameters.AddWithValue("@name",fname);
            //cmd.Parameters.AddWithValue("@stadd", txtstadd.Text);
            //cmd.Parameters.AddWithValue("@city",txtcity.Text );
            //cmd.Parameters.AddWithValue("@taluka", txtta.Text);
            //cmd.Parameters.AddWithValue("@dist", txtdist.Text);
            //cmd.Parameters.AddWithValue("@state", txtstate.Text);
            //cmd.Parameters.AddWithValue("@country", txtco.Text);
            //cmd.Parameters.AddWithValue("@pin", txtpin.Text);

            cmd.ExecuteNonQuery();
            Label1.Text = "Address Information Saved...";
            txtstadd.Text = "";
            txtcity.Text = "";
            txtta.Text = "";
            txtdist.Text = "";
            txtstate.Text = "";
            txtpin.Text = "";
        }
        catch (Exception ex)
        {
            Label1.Text = "Error While Saving Record";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtstadd.Text = "";
        txtcity.Text = "";
        txtta.Text = "";
        txtdist.Text = "";
        txtstate.Text = "";
        txtpin.Text = "";
    }
}