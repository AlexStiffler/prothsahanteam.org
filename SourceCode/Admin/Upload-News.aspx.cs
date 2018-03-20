using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class demo_Admin_Upload_News : BaseClass
{
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PRTH"].ConnectionString);
    BaseClass bClass = new BaseClass();
    private void BindGrid2()
    {
        try
        {           
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("STP_ManageUploadNewsDetails", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "GetNewsDetails");
            da.SelectCommand = cmd;
            da.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
                grdDetails.DataSource = dt;
                grdDetails.DataBind();
            }
        }
        catch (Exception Ex)
        {
            Ex.ToString();
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid2();
        }
        else
            RunJavaScriptFunction("datepick();");
       // ScriptManager.RegisterStartupScript(this, this.GetType(), Convert.ToString(Guid.NewGuid()), "javascript:datepick();", true);
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string filePath = string.Empty;
            string ImagePath = string.Empty;
          
            SqlCommand cmd = new SqlCommand("STP_ManageUploadNewsDetails", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            if (FileUpload1.HasFile)
            {
                if (hlpressview.NavigateUrl != null && hlpressview.NavigateUrl != "")
                    if (File.Exists(Server.MapPath(hlpressview.NavigateUrl)))
                        File.Delete(Server.MapPath(hlpressview.NavigateUrl));

                filePath = bClass.SaveFile(FileUpload1, "~/Worksheet/News/", true);
            }
            else
            {
                filePath = hlpressview.NavigateUrl;
            }
            //if (FileUpload2.HasFile)
            //{
            //    if (hlbtnView.NavigateUrl != null && hlbtnView.NavigateUrl != "")
            //        if (File.Exists(Server.MapPath(hlbtnView.NavigateUrl)))
            //            File.Delete(Server.MapPath(hlbtnView.NavigateUrl));

            //    ImagePath = bClass.SaveFile(FileUpload2, "~/Worksheet/Events/", true);
            //}
            //else
            //{
            //    ImagePath = hlbtnView.NavigateUrl;
            //}
            if (btnSubmit.Text == "Submit & Upload Event Images")
            {
                cmd.Parameters.AddWithValue("@Action", "InsertNews");
                cmd.Parameters.AddWithValue("@EventName", txtEventName.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@EventDate", ConvertYYYYMMDD(txtEventDate.Value).ToString("dd/MMM/yyyy"));
                cmd.Parameters.AddWithValue("@PressReleaseFilePath", filePath);
             //   cmd.Parameters.AddWithValue("@ImageFilePath", ImagePath);

                sqlcon.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                    //RunJavaScriptFunction("SuccessMessage('Record submitted successfully!!', '" + txtEventName.ClientID + "')");
                    Response.Redirect("Upload-Gallery.aspx");
                else
                    RunJavaScriptFunction("ErrorMessage('Record not submitted', '" + txtEventName.ClientID + "')");
             //   BindGrid2();
              //  Reset();
            }
            else
            {
                cmd.Parameters.AddWithValue("@Action", "UpdateNews");
                cmd.Parameters.AddWithValue("@EventName", txtEventName.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@EventDate", ConvertYYYYMMDD(txtEventDate.Value).ToString("dd/MMM/yyyy"));
                cmd.Parameters.AddWithValue("@PressReleaseFilePath", filePath);
             //   cmd.Parameters.AddWithValue("@ImageFilePath", ImagePath);
                cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(hdnId.Value));
                sqlcon.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                    RunJavaScriptFunction("SuccessMessage('Record submitted successfully!!', '" + txtEventName.ClientID + "')");
                   // Response.Redirect("Upload-Gallery.aspx");
                else
                    RunJavaScriptFunction("ErrorMessage('Record not submitted', '" + txtEventName.ClientID + "')");
                BindGrid2();
                Reset();
                  //Response.Redirect("Upload-Gallery.aspx");
            }
            sqlcon.Close();
        }
        catch (Exception Ex)
        {
            Ex.ToString();
        }
    }
    private void Reset()
    {
        txtEventName.Text = string.Empty;
        txtEventDate.Value = string.Empty;
        txtDescription.Text = string.Empty;
        hlbtnView.Visible = false;
        hlbtnView.NavigateUrl = string.Empty;
        hlbtnView.Text = string.Empty;
        hlpressview.Visible = false;
        hlpressview.NavigateUrl = string.Empty;
        hlpressview.Text = string.Empty;
        btnSubmit.Text = "Submit & Upload Event Images";
    }
   
    protected void grdDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString().ToLower() == "edit1")
        {
           
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("STP_ManageUploadNewsDetails", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "GetDetailsByID");
            cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(e.CommandArgument.ToString()));
            da.SelectCommand = cmd;
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                txtEventName.Text = dt.Rows[0]["EventName"].ToString();
                txtEventDate.Value = dt.Rows[0]["EventDate"].ToString();
                txtDescription.Text = dt.Rows[0]["Description"].ToString();
                hdnId.Value = dt.Rows[0]["Id"].ToString();
                //if (Convert.ToString(dt.Rows[0]["ImageFilePath"]) != string.Empty)
                //{
                //    hlbtnView.Visible = true;
                //    hlbtnView.Text = "View Image";
                //    hlbtnView.NavigateUrl = dt.Rows[0]["ImageFilePath"].ToString();
                //}
                if (Convert.ToString(dt.Rows[0]["PressReleaseFilePath"]) != string.Empty)
                {
                    hlpressview.Visible = true;
                    hlpressview.Text = "View Document";
                    hlpressview.NavigateUrl = dt.Rows[0]["PressReleaseFilePath"].ToString();
                }
                btnSubmit.Text = "Update";
            }
        }
    }
    protected void chkparent_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk = sender as CheckBox;
        foreach (GridViewRow ri in grdDetails.Rows)
        {
            CheckBox chkbChild = (CheckBox)ri.FindControl("chkChild");
            if (chk.Checked)
                chkbChild.Checked = true;
            else
                chkbChild.Checked = false;
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {

        string DocIds = string.Empty, CategoryIds = string.Empty;
        foreach (GridViewRow ri in grdDetails.Rows)
        {
            CheckBox chk = (CheckBox)ri.FindControl("chkChild");
            HiddenField docId = (HiddenField)ri.FindControl("hdnDocId");
            HiddenField hdnCategoryId = (HiddenField)ri.FindControl("hdnCategoryId");
            //Label lblEventName = (Label)ri.FindControl("lblEventName");
            //Label lblEventDate = (Label)ri.FindControl("lblEventDate");
            //Label lblDescription = (Label)ri.FindControl("lblDescription");
            //Image img = (Image)ri.FindControl("lblImage");
            if (chk.Checked)
            {
                DocIds += DocIds == string.Empty ? docId.Value : "," + docId.Value;
                CategoryIds += CategoryIds == string.Empty ? hdnCategoryId.Value : "," + hdnCategoryId.Value;           
            }
        }
     
        SqlCommand cmd = new SqlCommand("STP_ManageUploadNewsDetails", sqlcon);
        cmd.CommandType = CommandType.StoredProcedure;
       
        cmd.Parameters.AddWithValue("@Action", "DeleteNews");
        cmd.Parameters.AddWithValue("@DocIds",DocIds);
        cmd.Parameters.AddWithValue("@CategoryIds", CategoryIds);
        sqlcon.Open();
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
                RunJavaScriptFunction("SuccessMessage('Record deleted successfully!!', '" + txtEventName.ClientID + "')");
            else
            RunJavaScriptFunction("ErrorMessage('Record not deleted', '" + txtEventName.ClientID + "')");
        BindGrid2();
    }
}