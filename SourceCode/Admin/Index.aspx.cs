using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Index : System.Web.UI.Page
{
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PRTH"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand("STP_ManageLoginDetails", sqlcon);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserId", txtUserName.Text);
        cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
        da.SelectCommand = cmd;
        da.Fill(dt);
        if (dt != null && dt.Rows.Count > 0)
        {
            Session["UserId"] = dt.Rows[0][0].ToString();
            Response.Redirect("ViewRegistration.aspx");
        }
        else
        {
            lblError.Visible = true;
            txtUserName.Text = string.Empty;
            txtPassword.Text = string.Empty;
            lblError.Text = "Invalid UserName or Password!";
        }
    }
}