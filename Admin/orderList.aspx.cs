using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_orderList : System.Web.UI.Page
{
    string str;
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
       
            if (Session["email"] == null || Session["email"] == "")
            {
                Response.Redirect("~/Registration/login.aspx");
            }
            Panel1.Enabled = true;
            Panel2.Enabled = false;
            Panel3.Enabled = false;
            Panel4.Enabled = false;
            Panel5.Enabled = false;
            Label1.Text = "";
            cn.Open();
        
    }
    protected void ddlFilter_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlFilter.SelectedItem.Text == "Order Date")
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
        }
        if (ddlFilter.SelectedItem.Text == "Order Amount")
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel2.Enabled = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
        }
        if (ddlFilter.SelectedItem.Text == "E-Mail Id")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel3.Enabled = true;
            txtemail.Enabled = true;
            ddlemail.Enabled = true;
            Panel4.Visible = false;
            Panel5.Visible = false;
        }
        if (ddlFilter.SelectedItem.Text == "Order Status")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = true;
            Panel4.Enabled = true;
            Panel5.Visible = false;
        }
        if (ddlFilter.SelectedItem.Text == "Order Id")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = true;
            Panel5.Enabled = true;
        }
        if (ddlFilter.SelectedItem.Text == "All Order")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
        }
    }
    public void data()
    {
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        ds = new DataSet();
        da.Fill(ds, "order_Details");
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void btnShowOrder_Click(object sender, EventArgs e)
    {
        if (ddlFilter.SelectedItem.Text == "Order Date")
        {
            if (frmDate.Text != "" & toDate.Text != "")
            {
                //DateTime date1 = txtfrmDate.Text <= date1 >= txtToDate;
                //string date; 
                cmd = new SqlCommand("select order_Id,email,order_date,subTotal,order_Status from order_Details where order_date between '" + txtfrmDate.Text + "' and '" + txtToDate.Text + "'", cn);
                da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                ds = new DataSet();
                da.Fill(ds, "order_Details");
                GridView1.DataSource = ds;
                GridView1.DataBind();
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
            }
            else
            { Label1.Text = "Please Enter Date First..."; }
        }
        if (ddlFilter.SelectedItem.Text == "Order Amount")
        {
            if (txtAmount.Text != "")
            {
                if (ddlAmount.SelectedItem.Text == "Less Then")
                {
                    cmd = new SqlCommand("select order_Id,email,order_date,subTotal,order_Status from order_Details where subTotal<" + Convert.ToInt64(txtAmount.Text) + " ", cn);
                    data();
                }
                if (ddlAmount.SelectedItem.Text == "Greater Then")
                {
                    cmd = new SqlCommand("select order_Id,email,order_date,subTotal,order_Status from order_Details where subTotal>" + Convert.ToInt64(txtAmount.Text) + " ", cn);
                    data();
                }
                if (ddlAmount.SelectedItem.Text == "Equal To")
                {
                    cmd = new SqlCommand("select order_Id,email,order_date,subTotal,order_Status from order_Details where subTotal=" + Convert.ToInt64(txtAmount.Text) + " ", cn);
                    data();
                }
                if (ddlAmount.SelectedItem.Text == "Not Equal To")
                {
                    cmd = new SqlCommand("select order_Id,email,order_date,subTotal,order_Status from order_Details where subTotal!=" + Convert.ToInt64(txtAmount.Text) + " ", cn);
                    data();
                }
            }
            else
            {
                Label1.Text = "Please Enter Amount First...";
            }
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel2.Enabled = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
        }
        if (ddlFilter.SelectedItem.Text == "E-Mail Id")
        {
            if (txtemail.Text != "")
            {
                cmd = new SqlCommand("select order_Id,email,order_date,subTotal,order_Status from order_Details where email='" + txtemail.Text + "'", cn);
                data();
            }
            else
            {
                Label1.Text = "Please Enter E-Mail Id First...";
            }
            txtemail.Enabled = true;
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Enabled = true;
            Panel3.Visible = true;
            Panel4.Visible = false;
            Panel5.Visible = false;
        }
        if (ddlFilter.SelectedItem.Text == "Order Status")
        {
            if (ddlStatus.SelectedItem.Text != "")
            {
                cmd = new SqlCommand("select order_Id,email,order_date,subTotal,order_Status from order_Details where order_Status='" + ddlStatus.SelectedItem.Text + "'", cn);
                data();
            }
            else
            {
                Label1.Text = "Please Select Order_Status First...";
            }
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Enabled = false;
            Panel3.Visible = false;
            Panel4.Visible = true;
            Panel4.Enabled = true;
            Panel5.Visible = false;
        }
        if (ddlFilter.SelectedItem.Text == "Order Id")
        {
            if (ddlId.SelectedItem.Text != "")
            {
                cmd = new SqlCommand("select order_Id,email,order_date,subTotal,order_Status from order_Details where order_Id='" + ddlId.SelectedItem.Text + "'", cn);
                data();
            }
            else
            {
                Label1.Text = "Please Select Order_Id First...";
            }
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Enabled = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Enabled = true;
            Panel5.Visible = true;
        }
        if (ddlFilter.SelectedItem.Text == "All Order")
        {
                cmd = new SqlCommand("select order_Id,email,order_date,subTotal,order_Status from order_Details", cn);
                data();
            
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Enabled = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Enabled = false;
            Panel5.Visible = false;
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlemail.Enabled = true;
        txtemail.Text = ddlemail.SelectedItem.Text;
        txtemail.Enabled = false;
        
    }
    public void GridView1_Deleting(object sender, GridViewDeleteEventArgs e)
    {
        string str1 = "";
        str1 = GridView1.Rows[GridView1.SelectedRow.RowIndex].Cells[0].ToString();
        //string str1 = GridView1.Rows[0].Cells[0].ToString();
        cmd = new SqlCommand("delete from order_Details where order_Id='" + str1 + "'", cn);
        SqlCommand cmd1=new SqlCommand("delete from orderShipping where order_Id='" + str1 + "'", cn);
        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str2 = GridView1.Rows[GridView1.SelectedRow.RowIndex].Cells[0].Text;
        cmd = new SqlCommand("delete from order_Details where order_Id='" + str2 + "'", cn);
        SqlCommand cmd1 = new SqlCommand("delete from orderShipping where order_Id='" + str2 + "'", cn);
        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();
        GridView1.DataBind();
    }
}