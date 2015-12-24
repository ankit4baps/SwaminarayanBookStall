using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using shoppingCart;

public partial class CheckOut : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\M10046Project\SwaminarayanBookStall\App_Data\bookstall.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataSet ds;
    long oid;
    string st;
    DateTime str = DateTime.Now;
    string str1 = "In Process";
    protected void Page_Load(object sender, EventArgs e)
    {
        st = TextBox1.Text + txtmno.Text;
        if (!IsPostBack)
        {
            if (Session["email"] == "" || Session["email"] == null)
            {
                Response.Redirect("~/Registration/login.aspx");
            }
            txtemail.Text = Session["email"].ToString();
            txtemail0.Text = Session["email"].ToString();
            if (Profile.scart.Items.Count != 0)
            {
                cn.Open();
                cmd = new SqlCommand("select order_Id from OrderShipping", cn);
                dr = cmd.ExecuteReader();
                 //while (dr.Read())
                 //  {
                 //      temp = temp + 1;                   
                 //  }

                 //  Label5.Text = temp.ToString();

                /*
                if (dr.Read())
                {
                 * */
                while (dr.Read())
                {
                    oid = Convert.ToInt64(dr[0].ToString());
                }
                oid++;
                //}
                //else
                //{
                //    oid = 1;
                //}
                 
                  
               Session["oid"] = oid.ToString();
               Label5.Text = Session["oid"].ToString();
               dr.Close();
               
            }
            else
            {
                Profile.scart.Items.Clear();
                Session.Abandon();
                Response.Redirect("Home.aspx");
            }
        }
       
       da = new SqlDataAdapter("select name,stadd,city,taluka,dist,state,pin from addDetail where email='" + txtemail.Text + "'", cn);
        ds = new DataSet();
        da.Fill(ds, "addDetail");
        if (ds.Tables[0].Rows.Count != 0)
        {
            txtfnm.Text = ds.Tables[0].Rows[0][0].ToString();
            txtstadd.Text = ds.Tables[0].Rows[0][1].ToString();
            txtcity.Text = ds.Tables[0].Rows[0][2].ToString();
            txtta.Text = ds.Tables[0].Rows[0][3].ToString();
            txtdist.Text = ds.Tables[0].Rows[0][4].ToString();
            txtstate.Text = ds.Tables[0].Rows[0][5].ToString();
            txtpin.Text = ds.Tables[0].Rows[0][6].ToString();
           
        }
        else
        {
            Label1.Text = "You must enter Shipping Address Detail";
        }
        
    }
    protected void btnsubAdd_Click(object sender, EventArgs e)
    {
        cn.Open();
        oid = Convert.ToInt64(Session["oid"]);
        cmd = new SqlCommand("insert into OrderShipping values('" + txtemail0.Text + "'," + oid + ",'" + txtfnm0.Text + "','" + txtstadd0.Text + "','" + txtcity0.Text + "','" + txtta0.Text + "','" + txtdist0.Text + "','" + txtstate0.Text + "','" + txtco0.Text + "'," + txtpin0.Text + "," + st + ")", cn);
        cmd.ExecuteNonQuery();

        SqlCommand cmd1 = new SqlCommand("insert into order_Details (email,order_Id,item_id,item_nm,price,quantity,subTotal,order_date,order_Status)values(@email,@order_id,@item_id,@item_nm,@price,@quantity,@subTotal,@str,@str1)", cn);
        

        SqlParameter email, orderId, itemId, ItemNm, pri, qty, subTot,odate,ostatus,qty1;
        email = new SqlParameter("@email", SqlDbType.VarChar);
        cmd1.Parameters.Add(email);
        orderId = new SqlParameter("@order_id", SqlDbType.Int);
        cmd1.Parameters.Add(orderId);
        itemId = new SqlParameter("@item_id", SqlDbType.VarChar);
        cmd1.Parameters.Add(itemId);
        ItemNm = new SqlParameter("@item_nm", SqlDbType.VarChar);
        cmd1.Parameters.Add(ItemNm);
        pri = new SqlParameter("@price", SqlDbType.VarChar);
        cmd1.Parameters.Add(pri);
        qty = new SqlParameter("@quantity", SqlDbType.VarChar);
        cmd1.Parameters.Add(qty);
        subTot = new SqlParameter("@subTotal", SqlDbType.VarChar);
        cmd1.Parameters.Add(subTot);
        odate = new SqlParameter("@str", SqlDbType.Date);
        cmd1.Parameters.Add(odate);
        ostatus = new SqlParameter("@str1", SqlDbType.VarChar);
        cmd1.Parameters.Add(ostatus);
        //qty1 = new SqlParameter("@quantity", SqlDbType.Int);
        //cmd2.Parameters.Add(qty1);

        foreach (cartItem item in Profile.scart.Items)
        {
            email.Value = Session["email"].ToString();
            orderId.Value = oid;
            itemId.Value = item.book_id;
            ItemNm.Value = item.book_nm;
            pri.Value = item.price;
            qty.Value = item.Quantity;
            subTot.Value = item.SubTotal;
            odate.Value = str;
            ostatus.Value = str1;
            cmd1.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand("update book_mst set stock=stock-" + qty.Value + " where book_id='" + itemId.Value + "'", cn);
            cmd2.ExecuteNonQuery();
        }
        Label1.Text = "Order SuccessFully";
        txtfnm0.Text = "";
        Profile.scart.Items.Clear();
        Response.Redirect("ThankYou.aspx");
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            txtemail0.Text = txtemail.Text;
            txtfnm0.Text = txtfnm.Text;
            txtstadd0.Text = txtstadd.Text;
            txtcity0.Text = txtcity.Text;
            txtta0.Text = txtta.Text;
            txtdist0.Text = txtdist.Text;
            txtstate0.Text = txtstate.Text;
            txtpin0.Text = txtpin.Text;
        }
        else
        {
            txtfnm0.Text = "";
            txtstadd0.Text = "";
            txtcity0.Text = "";
            txtta0.Text = "";
            txtdist0.Text = "";
            txtstate0.Text = "";
            txtpin0.Text = "";
        }
    }
    protected void btnCan_Click(object sender, EventArgs e)
    {
        Profile.scart.Items.Clear();
        Response.Redirect("Home.aspx");
    }
}