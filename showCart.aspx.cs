using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using shoppingCart;
using System.Data;
using System.Data.SqlClient;

public partial class showCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Profile.scart == null)
        {
            Profile.scart = new shoppingCart.cart();
        }
        if (!Page.IsPostBack)
        {
            bindData();
        }
        if (Profile.scart.Items == null)
        {
            lblTot.Visible = false;
        }
        Session["count"] = GridView1.Rows.Count;
        Session["to_mail"] = GridView1;   
    }
    
    private void bindData()
    {
        GridView1.DataSource = Profile.scart.Items;
        DataBind();
        lblTot.Text = (Profile.scart.Total).ToString();
    }
    public void GridView1_Editing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bindData();
    }
    public void GridView1_Updating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtQuantity = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
        int quantity = Convert.ToInt32(txtQuantity.Text);
        if (quantity <= 0 )
        {
            Profile.scart.Items.RemoveAt(e.RowIndex);
        }
        
        else if (quantity > 10)
        {
            Profile.scart.Items[e.RowIndex].Quantity = 10;
        }
        else
        {
            Profile.scart.Items[e.RowIndex].Quantity = quantity;
        }
        GridView1.EditIndex = -1;
        bindData();
    }
    public void GridView1_CancleEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bindData();
    }
    public void GridView1_Deleting(object sender, GridViewDeleteEventArgs e)
    {
        Profile.scart.Items.RemoveAt(e.RowIndex);
        bindData();
        //Session["count"] = GridView1.Rows.Count;
    }
    
}