using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Employer_zone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
            btnDeleteRecord.Attributes.Add("onclick", "javascript:return DeleteConfirm()"); 
        }
    }
    private void BindGrid()
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PRTH"].ConnectionString);
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand("STP_ManagePostJobs", sqlcon);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Action", "GetPostJobDetails");
        da.SelectCommand = cmd;
        da.Fill(dt);
        if (dt != null && dt.Rows.Count > 0)
        {
            grdDetails.DataSource = dt;
            grdDetails.DataBind();
        }
    }
    //Method for Deleting Record  
    protected void DeleteRecord(int JobId)
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PRTH"].ConnectionString);
        SqlCommand cmd = new SqlCommand("STP_ManagePostJobs", sqlcon);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Action", "DeleteJobSubmit");
        cmd.Parameters.AddWithValue("@JobId", JobId);
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
    }
    protected void btnDeleteRecord_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow grow in grdDetails.Rows)
        {
            //Searching CheckBox("chkDel") in an individual row of Grid  
            CheckBox chkdel = (CheckBox)grow.FindControl("chkDel");
            //If CheckBox is checked than delete the record with particular empid  
            if (chkdel.Checked)
            {
                HiddenField hdnJobId = (HiddenField)grow.FindControl("JobId");
                int JobId = Convert.ToInt32(hdnJobId.Value);
                DeleteRecord(JobId);
            }
        }
        //Displaying the Data in GridView  
        BindGrid();
    } 
}