using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_ManageUser : System.Web.UI.Page
{
    string str;
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        if (Session["email"] == null || Session["email"] == "")
        {
            Response.Redirect("~/Registration/login.aspx");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //str = DropDownList1.SelectedItem.Text;
        //try
        //{
        //    cn.Open();
        //    cmd = new SqlCommand("select p.email,p.fname,p.lname,p.mno,p.lno,p.gender,p.bdate,a.stadd,a.city,a.taluka,a.dist,a.state,a.country,a.pin from personalInfo p,addDetail a where p.email=a.email & p.email='" + str + "'", cn);
        //    da = new SqlDataAdapter();
        //    da.SelectCommand = cmd;
        //    ds = new DataSet();
        //    da.Fill(ds, "personalInfo");
        //    GridView1.DataSource = ds;
        //    GridView1.DataBind();
        //}
        //catch (Exception ex)
        //{
        //}
        str = DropDownList1.SelectedItem.Text;
        Label1.Text = "";
        try
        {
            SqlDataReader dr;
            str = DropDownList1.SelectedItem.Text;
            SqlCommand cmd = new SqlCommand("select * from personalInfo where email='" + str + "'", cn);
            dr = cmd.ExecuteReader();
            dr.Read();
            txtemail.Text = dr[0].ToString();
            txtfname.Text = dr[1].ToString();
            txtlname.Text = dr[2].ToString();
            txtmno.Text = dr[5].ToString();
            txtlno.Text = dr[6].ToString();
            txtbdate.Text = dr[4].ToString();
            txtgender.Text = dr[3].ToString();
            dr.Close();

            SqlCommand cmd1 = new SqlCommand("select * from addDetail where email='" + str + "'", cn);
            dr = cmd1.ExecuteReader();
            dr.Read();
            txtstadd.Text = dr[2].ToString();
            txtcity.Text = dr[3].ToString();
            txtta.Text = dr[4].ToString();
            txtdist.Text = dr[5].ToString();
            txtstate.Text = dr[6].ToString();
            txtpin.Text = dr[8].ToString();
        }
        catch (Exception ex)
        {
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
            str = DropDownList1.SelectedItem.Text;
            cmd = new SqlCommand("update personalInfo set fname='" + txtfname.Text + "',lname='" + txtlname.Text + "',gender='" + txtgender.Text + "',bdate='" + txtbdate.Text + "',mno='" + txtmno.Text + "',lno='" + txtlno.Text + "' where email='" + str + "'", cn);
            cmd.ExecuteNonQuery();

            SqlCommand cmd1 = new SqlCommand("update addDetail set name='" + txtfname.Text + " " + txtlname.Text + "',stadd='" + txtstadd.Text + "',city='" + txtcity.Text + "',taluka='" + txtta.Text + "',dist='" + txtdist.Text + "',state='" + txtstate.Text + "',pin='" + txtpin.Text + "' where email='" + str + "'", cn);
            cmd1.ExecuteNonQuery();
            Label1.Text = "Record Updated Successfully...";
        
            
        
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        str = DropDownList1.SelectedItem.Text;
        SqlCommand cmd1 = new SqlCommand("delete from addDetail where email='" + str + "'", cn);
        cmd1.ExecuteNonQuery();
        cmd = new SqlCommand("delete from personalInfo where email='" + str + "'", cn);
        cmd.ExecuteNonQuery();

        Label1.Text = "Record Deleted Successfully";
    }
}