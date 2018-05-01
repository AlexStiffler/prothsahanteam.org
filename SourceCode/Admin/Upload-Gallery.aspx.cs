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

public partial class demo_Admin_Upload_Gallery : BaseClass
{
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PRTH"].ConnectionString);
    string filePath = string.Empty;
    string ImagePath = string.Empty;
    string ImageName = string.Empty;
    BaseClass bClass = new BaseClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCategory();
            BindImageGalleryDetails();
        }
    }
    private void BindCategory()
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("STP_ManageImageGallery", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "BindCategory");
            da.SelectCommand = cmd;
            da.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
                ddlCategory.DataTextField = "CategoryName";
                ddlCategory.DataValueField = "CategoryId";
                ddlCategory.DataSource = dt;
                ddlCategory.DataBind();
            }
            ddlCategory.Items.Insert(0, new ListItem("Select", "0"));
        }
        catch (Exception Ex)
        {
            Ex.ToString();
        }
    }
    void BindImageGalleryDetails()
    {
        try
        {
            DataTable dt = TableType();
            for (int i = 0; i < 1; i++)
                dt.Rows.Add();
            ViewState["data"] = dt;
            RepMultipleUpload.DataSource = dt;
            RepMultipleUpload.DataBind();

        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
    DataTable TableType()
    {

        DataTable dtSubmitData = new DataTable();
        dtSubmitData.Columns.Add("ImageTitle");
        dtSubmitData.Columns.Add("Imagename");
        dtSubmitData.Columns.Add("FilePath");
        if (Session["Path"] != null)
        {
            foreach (RepeaterItem Item in RepMultipleUpload.Items)
            {
                CheckBox chk = RepMultipleUpload.Items[Item.ItemIndex].FindControl("chkChildDelete") as CheckBox;
                if (chk.Checked)
                {
                    FileUpload fu = RepMultipleUpload.Items[Item.ItemIndex].FindControl("Futransfer") as FileUpload;
                    TextBox txtImgName = RepMultipleUpload.Items[Item.ItemIndex].FindControl("txtImgTitle") as TextBox;
                    Dictionary<string, HttpPostedFile> dictionary = Session["Path"] as Dictionary<string, HttpPostedFile>;

                    foreach (string key in dictionary.Keys)
                    {

                        string FilePath1 = "~/Worksheet/ImageGallery/";
                        string keyy = key.Split('$')[1];
                        if (keyy.ToLower() == fu.ClientID.ToLower())
                        {
                            if (Directory.Exists(Server.MapPath(FilePath1)) == false)
                                Directory.CreateDirectory(Server.MapPath(FilePath1));
                            HttpPostedFile postedfile = dictionary[key] as HttpPostedFile;
                            
                            filePath = bClass.SaveFile(postedfile, FilePath1, true);
                            if (filePath != string.Empty)
                            {
                                ImageName = filePath.Split('/').Last();
                                dtSubmitData.Rows.Add(txtImgName.Text, ImageName, filePath);
                            }
                        }
                    }
                }
            }
            dtSubmitData.AcceptChanges();
        }
        return dtSubmitData;
    }
    public void bindRepeater()
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("STP_ManageImageGallery", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "BindDetails");
            cmd.Parameters.AddWithValue("@Categoryid", ddlCategory.SelectedValue);
            da.SelectCommand = cmd;
            da.Fill(dt);
            lblCategoryName.Text = ddlCategory.SelectedItem.Text;
            if (dt != null && dt.Rows.Count > 0)
            {
                RepDetails.DataSource = dt;
                RepDetails.DataBind();
                btnDelete.Visible = true;
            }
            else
            {
                RepDetails.DataSource = new DataTable();
                RepDetails.DataBind();
                btnDelete.Visible = false;
            }
        }
        catch (Exception Ex)
        {
            Ex.ToString();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
          DataTable dt=TableType();
            if (dt.Rows.Count == 0)
            {
                TextBox txtImgTitle = RepMultipleUpload.Items[0].FindControl("txtImgTitle") as TextBox;
                RunJavaScriptFunction("ErrorMessage('Enter atleast one record to upload.','" + txtImgTitle.ClientID + "' )");
                return;
            }
            string filename = string.Empty;
            SqlCommand cmd = new SqlCommand("STP_ManageImageGallery", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
          
            if (hdnImgID.Value == "" || hdnImgID.Value == null)
            {
              
                cmd.Parameters.AddWithValue("@Action", "Insert");
                cmd.Parameters.AddWithValue("@CategoryId", ddlCategory.SelectedValue);
                cmd.Parameters.AddWithValue("@Posteddate", DateTime.Now);
                cmd.Parameters.AddWithValue("@ImageGallery", dt);

                sqlcon.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                    RunJavaScriptFunction("SuccessMessage('Record submitted successfully!!', '" + ddlCategory.ClientID + "')");
                else
                    RunJavaScriptFunction("ErrorMessage('Record not submitted', '" + ddlCategory.ClientID + "')");

            }
            else
            {
                
                if (Session["Path"] != null)
                {
                    if (File.Exists(Server.MapPath(hdnimgName.Value)))
                    {
                        File.Delete(Server.MapPath(hdnimgName.Value));
                    }

                    //Dictionary<string, HttpPostedFile> dictionary = Session["Path"] as Dictionary<string, HttpPostedFile>;
                    //foreach (string key in dictionary.Keys)
                    //{
                      
                    //    HttpPostedFile postedfile = dictionary[key] as HttpPostedFile;
                    //    string FilePath = "~/Worksheet/ImageGallery/";
                    //    filePath = bClass.SaveFile(postedfile, FilePath, true);
                    //    ImageName = filePath.Split('/').Last();
                    //    dtSubmitData.Rows.Add("", ImageName, filePath);
                    //}
                    //HttpContext.Current.Session["Path"] = null;
                }
                else
                {
                    if (!String.IsNullOrEmpty(hdnimgName.Value))
                    {
                        ImageName = hdnimgName.Value;
                    }
                    else
                    {
                        RunJavaScriptFunction("ShowErrorMsg('Please upload Image !')");
                        return;
                    }
                }

                cmd.Parameters.AddWithValue("@Action", "Update");
                cmd.Parameters.AddWithValue("@CategoryId", ddlCategory.SelectedValue);
                cmd.Parameters.AddWithValue("@Posteddate", DateTime.Now);
                cmd.Parameters.AddWithValue("@ImageGallery", dt);

                sqlcon.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                    RunJavaScriptFunction("SuccessMessage('Record updated successfully!!', '" + ddlCategory.ClientID + "')");
                else
                    RunJavaScriptFunction("ErrorMessage('Record not updated', '" + ddlCategory.ClientID + "')");
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
      
        Reset();
        bindRepeater();

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {

    }
    protected void RepMultipleUpload_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    protected void lbtnEdit_Click(object sender, EventArgs e)
    {
        LinkButton btn = sender as LinkButton;
        RepeaterItem repteritem = btn.Parent as RepeaterItem;
        HiddenField hdnID = RepDetails.Items[repteritem.ItemIndex].FindControl("hdnNid") as HiddenField;
        Label lblImagetitle = RepDetails.Items[repteritem.ItemIndex].FindControl("lblImagetitle") as Label;
        Label lblCategory = RepDetails.Items[repteritem.ItemIndex].FindControl("lblCategory") as Label;
        Label lblClass = RepDetails.Items[repteritem.ItemIndex].FindControl("lblClass1") as Label;
        TextBox txtImageTitle = RepDetails.Items[repteritem.ItemIndex].FindControl("txtImageTitle") as TextBox;
        FileUpload fu = RepDetails.Items[repteritem.ItemIndex].FindControl("Futransfer1") as FileUpload;
        LinkButton lnkUpdate = RepDetails.Items[repteritem.ItemIndex].FindControl("lnkupdate") as LinkButton;
        LinkButton lnkEdit = RepDetails.Items[repteritem.ItemIndex].FindControl("lbtnEdit") as LinkButton;
        System.Web.UI.WebControls.Image lblImage = RepDetails.Items[repteritem.ItemIndex].FindControl("lblImage") as System.Web.UI.WebControls.Image;
        hdnImgID.Value = hdnID.Value;
        txtImageTitle.Visible = true;
        lblImagetitle.Visible = false;
        lblImage.Visible = false;
        fu.Visible = true;
        txtImageTitle.Text = lblImagetitle.Text;
        ddlCategory.SelectedValue = lblCategory.Text;
        lnkEdit.Visible = false;
        lnkUpdate.Visible = true;
        hdnimgName.Value = lblImage.ImageUrl;
        // ModelImage1.Src = lblImage.ImageUrl.Replace("~", "..");
        RunJavaScriptFunction("uploadlogo();");
    }
    protected void lnkupdate_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("STP_ManageImageGallery", sqlcon);
        cmd.CommandType = CommandType.StoredProcedure;
        string filename = string.Empty;
        string FilePath = "~/Worksheet/ImageGallery/";
        int index = Convert.ToInt32(hdnIndex.Value);
        Image lblImage = RepDetails.Items[index].FindControl("lblImage") as Image;
        TextBox txtImageTitle = RepDetails.Items[index].FindControl("txtImageTitle") as TextBox;

        if (Session["Path"] != null)
        {
            Dictionary<string, HttpPostedFile> dictionary = Session["Path"] as Dictionary<string, HttpPostedFile>;
            foreach (string key in dictionary.Keys)
            {
                HttpPostedFile postedfile = dictionary[key] as HttpPostedFile;
                filename = postedfile.FileName;
                filename = ConfigurationManager.AppSettings["prefixItem"] + bClass.randomNumbersString(25) + Path.GetExtension(filename);
                if (File.Exists(Server.MapPath(lblImage.ImageUrl)))
                {
                    File.Delete(Server.MapPath(lblImage.ImageUrl));
                }
                postedfile.SaveAs(Server.MapPath(FilePath) + filename);

            }
            HttpContext.Current.Session["Path"] = null;
            FilePath = FilePath + filename;
        }
        else
        {
            FilePath = lblImage.ImageUrl.ToString();
        }

        cmd.Parameters.AddWithValue("@Action", "Update");
        cmd.Parameters.AddWithValue("@CategoryId", ddlCategory.SelectedValue);
        cmd.Parameters.AddWithValue("@Posteddate", DateTime.Now);
        cmd.Parameters.AddWithValue("@ImageName", FilePath.Split('/').Last());
        cmd.Parameters.AddWithValue("@Imagetitle", txtImageTitle.Text);
        cmd.Parameters.AddWithValue("@FilePath", FilePath);
        cmd.Parameters.AddWithValue("@ImgId", Convert.ToInt32(hdnImgID.Value));
        sqlcon.Open();
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
            RunJavaScriptFunction("SuccessMessage('Record updated successfully!!', '" + ddlCategory.ClientID + "')");
        else
            RunJavaScriptFunction("ErrorMessage('Record not updated', '" + ddlCategory.ClientID + "')");
        bindRepeater();
        Reset();
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("STP_ManageImageGallery", sqlcon);
        cmd.CommandType = CommandType.StoredProcedure;
        string id = string.Empty;
        string Title = string.Empty;
        string Date = string.Empty;
        for (int i = 0; i < RepDetails.Items.Count; i++)
        {
            CheckBox chk = RepDetails.Items[i].FindControl("chkChildDelete") as CheckBox;

            if (chk.Checked)
            {
                HiddenField hdnID = RepDetails.Items[i].FindControl("hdnNid") as HiddenField;
                Label lblImagetitle = RepDetails.Items[i].FindControl("lblImagetitle") as Label;
                Label lblDate = RepDetails.Items[i].FindControl("lblDate") as Label;
                id = id + "," + Convert.ToInt32(hdnID.Value);
                Title = Title + "," + Convert.ToString(lblImagetitle.Text);
                Date = Date + "," + Convert.ToString(lblDate.Text);
            }
        }

        cmd.Parameters.AddWithValue("@Action", "Delete");
        cmd.Parameters.AddWithValue("@CategoryId", ddlCategory.SelectedValue);
        cmd.Parameters.AddWithValue("@MulId", id.Substring(1));
        sqlcon.Open();
        int j = cmd.ExecuteNonQuery();
        if (j > 0)
            RunJavaScriptFunction("SuccessMessage('Record deleted successfully!!', '" + ddlCategory.ClientID + "')");
        else
            RunJavaScriptFunction("ErrorMessage('Record not deleted', '" + ddlCategory.ClientID + "')");
        bindRepeater();
    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindRepeater();
    }

    private void Reset()
    {
        ViewState["dt"] = null;
        Session["Path"] = null;
        BindImageGalleryDetails();
        
    }
}