using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class demo_Admin_Admin_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null)
        { Response.Redirect("../index.aspx"); }
    }
    protected void lbtnSignOut_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("../index.aspx");
    }
}
