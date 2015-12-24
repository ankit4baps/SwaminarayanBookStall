using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class custMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null || Session["email"] == "")
        {
            HyperLink1.Visible = true;
            Menu2.Visible = false;
        }
        else
        {
            Label4.Text = "Welcome " + Session["email"].ToString();
            HyperLink1.Visible = false;
            Menu2.Visible = true;
        }
    }
}
