using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using shoppingCart;

public partial class Publication_MP3 : System.Web.UI.Page
{
    int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label bookID = (Label)GridView1.Rows[int.Parse(GridView1.SelectedRow.RowIndex.ToString())].Cells[0].FindControl("Label4");
        Label bookNM = (Label)GridView1.Rows[int.Parse(GridView1.SelectedRow.RowIndex.ToString())].Cells[0].FindControl("Label5");
        Label Price = (Label)GridView1.Rows[int.Parse(GridView1.SelectedRow.RowIndex.ToString())].Cells[0].FindControl("Label7");
        Image Photo = (Image)GridView1.Rows[int.Parse(GridView1.SelectedRow.RowIndex.ToString())].Cells[0].FindControl("Image1");

        string bookId = bookID.Text.ToString();
        string bookNm = bookNM.Text.ToString();
        double price = double.Parse(Price.Text.ToString());
        string Img = Photo.ImageUrl.ToString();
        if (Profile.scart == null)
        {
            Profile.scart = new shoppingCart.cart();
        }
        Profile.scart.Insert(bookId, bookNm, price, Img, 1);

        Session["count"] = count + 1;
    }
}