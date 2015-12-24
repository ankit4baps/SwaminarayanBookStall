using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_InsertItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null || Session["email"] == "")
        {
            Response.Redirect("~/Registration/login.aspx");
        }
    }

    protected void btnisert_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
            cn.Open();
            string str = txtCode.Text + txtbid.Text;
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
                        FileUpload1.PostedFile.SaveAs(path+filename);
                        string imgpath = filename.ToString();
                        SqlCommand cmd = new SqlCommand("insert into book_mst values('" + str + "','" + txtbnm.Text + "','" + txtaut.Text + "'," + Convert.ToInt32(txtpri.Text) + ",'" + txtdesc.Text + "','" + imgpath.ToString() + "'," + Convert.ToInt32(txtstk.Text) + ")", cn);
                        cmd.ExecuteNonQuery();
                        cmd.Dispose();
                        Label1.Text = "Record Saved & File Uploaded successfully";                        
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
            txtbid.Text = "";
            txtbnm.Text = "";
            txtaut.Text = "";
            txtpri.Text = "";
            txtdesc.Text = "";
            txtstk.Text = "";
        }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtbid.Text = "";
        txtbnm.Text = "";
        txtaut.Text = "";
        txtpri.Text = "";
        txtdesc.Text = "";
        txtstk.Text = "";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Gujarati")
        {
            txtCode.Text = "G";
            
        }
        if (DropDownList1.SelectedItem.Text == "English")
        {
            txtCode.Text = "E";
            
        }
        if (DropDownList1.SelectedItem.Text == "Hindi")
        {
            txtCode.Text = "H";
        }
        if (DropDownList1.SelectedItem.Text == "Marathi")
        {
            txtCode.Text = "M";
            
        }
        if (DropDownList1.SelectedItem.Text == "Audio CDs")
        {
            txtCode.Text = "A";
            
        }
        if (DropDownList1.SelectedItem.Text == "MP3")
        {
            txtCode.Text = "P";
            
        }
        if (DropDownList1.SelectedItem.Text == "Satsang Darshan")
        {
            txtCode.Text = "S";
        }
        if (DropDownList1.SelectedItem.Text == "DVDs")
        {
            txtCode.Text = "D";
        }
    }
}