using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class demo_Admin_ImageCategory : System.Web.UI.Page
{
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PRTH"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindRepeater();
        }
    }
    void bindRepeater()
    {       
        try
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("STP_ManageImageCategory", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "BindImageCategory");
            da.SelectCommand = cmd;
            da.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
                RepDetails.DataSource = dt;
                RepDetails.DataBind();
            }
        }
        catch (Exception Ex)
        {
            Ex.ToString();
        }
    }
    private void Reset()
    {
        txtCategory.Text = string.Empty;
        txtDescription.Text = string.Empty;
        btnSave.Text = "Submit";
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("STP_ManageImageCategory", sqlcon);
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
          if (btnSave.Text == "Submit")
            {
                cmd.Parameters.AddWithValue("@Action", "Insert");
                cmd.Parameters.AddWithValue("@CategoryName",txtCategory.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
             
                sqlcon.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                    RunJavaScriptFunction("SuccessMessage('Record submitted successfully!!', '" + txtCategory.ClientID + "')");
                else
                    RunJavaScriptFunction("ErrorMessage('Record not submitted', '" + txtCategory.ClientID + "')");
                bindRepeater();
                Reset();
            }
            else
            {
                cmd.Parameters.AddWithValue("@Action", "Update");
                cmd.Parameters.AddWithValue("@CategoryName", txtCategory.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@CategoryId", Convert.ToInt32(hdnId.Value));
                sqlcon.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                    RunJavaScriptFunction("SuccessMessage('Record updated successfully!!', '" + txtCategory.ClientID + "')");
                else
                    RunJavaScriptFunction("ErrorMessage('Record not updated', '" + txtCategory.ClientID + "')");
                bindRepeater();
                Reset();
            }
            sqlcon.Close();
        }
        catch (Exception Ex)
        {
            Ex.ToString();
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Reset();
    }
    protected void lbtnEdit_Click(object sender, EventArgs e)
    {
        LinkButton btn = sender as LinkButton;
        RepeaterItem repteritem = btn.Parent as RepeaterItem;
        HiddenField hdnID1 = RepDetails.Items[repteritem.ItemIndex].FindControl("hdnid") as HiddenField;
        Label lblName = RepDetails.Items[repteritem.ItemIndex].FindControl("lblCategory") as Label;
        Label lblDescription = RepDetails.Items[repteritem.ItemIndex].FindControl("lblDescription") as Label;
        hdnId.Value = hdnID1.Value;
        txtCategory.Text = lblName.Text;
        txtDescription.Text = lblDescription.Text;
        btnSave.Text = "Update";
    }
    protected void lnkDelete_Click(object sender, EventArgs e)
    {
     
    }
  public void RunJavaScriptFunction(string functionName)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), Convert.ToString(Guid.NewGuid()), "javascript:" + functionName + ";", true);
    }
  protected void btnDelete_Click(object sender, EventArgs e)
  {
      string Ids = string.Empty;
      foreach (RepeaterItem ri in RepDetails.Items)
      {
          CheckBox chk = (CheckBox)ri.FindControl("chkChild");
          HiddenField docId = (HiddenField)ri.FindControl("hdnDocId");

          if (chk.Checked)
          {
              Ids += Ids == string.Empty ? docId.Value : "," + docId.Value;
          }
      }

      SqlCommand cmd = new SqlCommand("STP_ManageImageCategory", sqlcon);
      cmd.CommandType = CommandType.StoredProcedure;

      cmd.Parameters.AddWithValue("@Action", "Delete");
      cmd.Parameters.AddWithValue("@Ids", Ids);

      sqlcon.Open();
      int i = cmd.ExecuteNonQuery();
      if (i > 0)

          RunJavaScriptFunction("SuccessMessage('Record deleted successfully!!', '" + txtCategory.ClientID + "')");
      else
          RunJavaScriptFunction("ErrorMessage('Record not deleted', '" + txtCategory.ClientID + "')");
      bindRepeater();
  }
}