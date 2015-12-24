using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_UpdateItem : System.Web.UI.Page
{
    string str;
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cn.Open();
            if (Session["email"] == null || Session["email"] == "")
            {
                Response.Redirect("~/Registration/login.aspx");
            }
        }
        //try
        //{
        //    str = DropDownList1.SelectedItem.Text;
        //    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
        //    cn.Open();
        //    SqlCommand cmd = new SqlCommand("select * from book_mst where book_id='"+str+"'", cn);
        //    cmd.ExecuteReader();
        //   // Response.Write(str);

        //}
        //catch (Exception ex)
        //{ 
        //}
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cn.Open();
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
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        if (DropDownList1.SelectedIndex>-1)
        {
            try
            {
                if (FileUpload1.HasFile == true)
                {
                    string path = Server.MapPath("~/Image/");
                    string filename = FileUpload1.FileName; ;
                    bool fileok = false;
                    if (FileUpload1.HasFile)
                    {
                        string fileExtension = null;
                        fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                        string[] allowedExtension = { ".jpg", ".jpeg", ".gif", ".png" };
                        for (int i = 0; i <= allowedExtension.Length - 1; i++)
                        {
                            if (fileExtension == allowedExtension[i])
                            {
                                fileok = true;
                            }
                        }
                    }
                    if (fileok)
                    {
                        FileUpload1.PostedFile.SaveAs(path + filename);
                        string imgpath = filename.ToString();
                        SqlCommand cmd = new SqlCommand("update book_mst set book_id='" + txtbid.Text + "',book_nm='" + txtbnm.Text + "',author='" + txtaut.Text + "',price=" + Convert.ToInt32(txtpri.Text) + ",descr='" + txtdesc.Text + "',photo='" + imgpath.ToString() + "',stock=" + Convert.ToInt32(txtstk.Text) + "where book_id='" + txtbid.Text + "'", cn);
                        cmd.ExecuteNonQuery();
                        Label1.Text = "Record & File Uploaded successfully";
                    }
                    else
                    {
                        Label1.Text = "Not A Valid File";
                    }
                }

            }
            catch (Exception ex)
            {
                Label1.Text = (ex.Message);
                Label1.Text = "Record Not Saved";
            }
        }
        else
        {
            txtbid.Enabled = false;
            txtbnm.Enabled = false;
            txtaut.Enabled = false;
            txtpri.Enabled = false;
            txtdesc.Enabled = false;
            FileUpload1.Enabled = false;
        }
        txtbid.Text = "";
        txtbnm.Text = "";
        txtaut.Text = "";
        txtpri.Text = "";
        txtdesc.Text = "";
        txtstk.Text = "";
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