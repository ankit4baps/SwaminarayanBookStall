using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.MasterPage
{
    protected void init(object sender, EventArgs e)
    {
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null || Session["email"] == "")
        {
            HyperLink1.Visible = true;
            Menu3.Visible = false;
        }
        else
        {
            if (Session["email"].ToString() != "ankit4baps@gmail.com")
            {
                Response.Redirect("~/Registration/login.aspx");
            }
            else
            {
                Label4.Text = "Welcome " + Session["email"].ToString();
                HyperLink1.Visible = false;
                Menu3.Visible = true;
            }
        }
    }
}
