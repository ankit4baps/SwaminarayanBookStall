using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using shoppingCart;

public partial class search : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (!(DropDownList1.SelectedItem.Text == "-----Search By-----") && !String.IsNullOrEmpty(txtSearch.Text))
        {
            if (DropDownList1.SelectedItem.Text == "Item Id")
            {
                cn.Open();
                cmd = new SqlCommand("select book_id,book_nm,author,price from book_mst where book_id like '%" + txtSearch.Text + "%'", cn);
                da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                ds = new DataSet();
                da.Fill(ds, "book_mst");
                GridView1.DataSource = ds;
                GridView1.DataBind();
                Label1.Text = "";
                if (GridView1.Rows.Count < 1)
                {
                    Label1.Text = "No Records Found";
                }
            }
            if (DropDownList1.SelectedItem.Text == "Item Name")
            {
                cn.Open();
                string str = txtSearch.Text;
                cmd = new SqlCommand("select book_id,book_nm,author,price from book_mst where book_nm like '%" + str + "%'", cn);
                da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                ds = new DataSet();
                da.Fill(ds, "book_mst");
                GridView1.DataSource = ds;
                GridView1.DataBind();
                Label1.Text = "";
                if (GridView1.Rows.Count < 1)
                {
                    Label1.Text = "No Records Found";
                }
            }
            if (DropDownList1.SelectedItem.Text == "Author")
            {
                cn.Open();
                cmd = new SqlCommand("select book_id,book_nm,author,price from book_mst where author like '%" + txtSearch.Text + "%'", cn);
                da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                ds = new DataSet();
                da.Fill(ds, "book_mst");
                GridView1.DataSource = ds;
                GridView1.DataBind();
                Label1.Text = "";
                if (GridView1.Rows.Count < 1)
                {
                    Label1.Text = "No Records Found";
                }
            }
            if (DropDownList1.SelectedItem.Text == "Price")
            {
                cn.Open();
                cmd = new SqlCommand("select book_id,book_nm,author,price from book_mst where price='" + txtSearch.Text + "'", cn);
                da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                ds = new DataSet();
                da.Fill(ds, "book_mst");
                GridView1.DataSource = ds;
                GridView1.DataBind();
                Label1.Text = "";
                if (GridView1.Rows.Count < 1)
                {
                    Label1.Text = "No Records Found";
                }
            }
        }
        else
        {
            Label1.Text = "Select Proper Search By...";
        }
    }

    //[System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    //public static string[] GetCompletionList(string prefixText, int count, string contextKey)
    //{
    //    SqlConnection conn;
    //    SqlCommand cmd;
    //    string cmdString = "select book_id,book_nm,author,price from book_mst where book_nm like '" + prefixText + "%'";
    //    conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
    //    cmd = new SqlCommand(cmdString, conn);
    //    conn.Open();

    //    SqlDataReader mydr;
    //    List<string> returndData = new List<string>();
    //    mydr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

    //    while (mydr.Read())
    //    {
    //        returndData.Add(mydr["book_nm"].ToString());
    //    }

    //    return returndData.ToArray();
    //}
    
}