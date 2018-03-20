using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class demo_Admin_Donor : System.Web.UI.Page
{
     SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PRTH"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }
    private void BindGrid()
    {
         try
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("STP_ManageDonationMst", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;          
            cmd.Parameters.AddWithValue("@Action", "GetDonorDetails");
            da.SelectCommand = cmd;
            da.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
                grdDonorDetails.DataSource = dt;
                grdDonorDetails.DataBind();
            }
            else
            {
                grdDonorDetails.DataSource = new DataTable();
                grdDonorDetails.DataBind();
            }
         }
        catch(Exception Ex)
         {
            Ex.ToString();
        }
    }
}