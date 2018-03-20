using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.IO;
public partial class EmployeeJone : BaseClass
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PRTH"].ConnectionString);
    BaseClass bClass = new BaseClass();
    public void Reset()
    {
        txtApplicantEmailId.Text = string.Empty;
        txtApplicantName.Text = string.Empty;
        BindGrid();

    }
    public void sendMail(string ToAddress, string bcc, string subject, string Mailbody, string displayname, string AttachmentPath, string ReplyTo, string BccToAddress = null)
    {
        try
        {
            MailMessage mailMessage = new MailMessage();
            string [] MultiEmail = ToAddress.Split(',');
            foreach(string MEmail in MultiEmail)
            {
                mailMessage.To.Add(MEmail);
            }
            mailMessage.ReplyToList.Add(ReplyTo);                       //= new MailAddress(ReplyTo);

            if (BccToAddress != null)
            {

                mailMessage.Bcc.Add(BccToAddress);

            }
            mailMessage.From = new MailAddress("donotreply@jupsoft.org", displayname);

            mailMessage.Subject = subject;

            if (FileUpload1.HasFile)
            {
                string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                mailMessage.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileName));
            }
            mailMessage.IsBodyHtml = true;

            mailMessage.Body = Mailbody;

            mailMessage.Bcc.Add(new MailAddress(bcc));

            SmtpClient smtpClient = new SmtpClient("mail.jupsoft.org");

            NetworkCredential credentials = new NetworkCredential("donotreply@jupsoft.org", "jtpl@1234");

            smtpClient.UseDefaultCredentials = false;

            smtpClient.EnableSsl = "mail.jupsoft.org".ToLower().Contains("smtp.") ? true : false;

            smtpClient.Credentials = credentials;

            smtpClient.Port = "mail.jupsoft.org".ToLower().Contains("smtp.") ? 587 : 25;

            smtpClient.Send(mailMessage);
        }
        catch (Exception ex)
        {
            ex.ToString();
        }

    }
    public void SendMailtoClient()
    {
        try
        {

            if (txtApplicantName.Text == string.Empty)
                return;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.Append(string.Concat(new string[]
                    {
                    "<h3 style='text-align: center'>Youth Empowerment Form : Employee Jone</h3><table style='border: 1px solid #ddd;width: 100%;max-width: 100%;margin-bottom: 20px;border-spacing: 0;border-collapse: collapse;'>",
                    "<tbody style='display: table-row-group;vertical-align: middle;border-color: inherit;'>",
                    "<tr>",
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Employee Name</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtApplicantName.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Email ID</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtApplicantEmailId.Text.Trim()
                    }));
            stringBuilder.Append("</td></tr></tbody></table><br/><br/></br>");
            this.sendMail("info@prothsahanteam.org", "akhil@jupsoft.org", "Youth Empowerment Form : prothsahanteam.org", stringBuilder.ToString(), "Youth Empowerment Form : prothsahanteam.org", "", txtApplicantEmailId.Text.Trim(), null);
        }
        catch (Exception ex)
        {
            ex.ToString();
            //   this.sendMail("akhil@jupsoft.org ", "Mail from eConnect enquiry", ex.Message.ToString() + ";" + this.txtname.Text.Trim() + "," + this.txtemailid.Text.Trim() + "," + this.txtphone.Text.Trim() + "," + this.txtmessage.Text.Trim(), "Enquiry From Cloud based School Management ERP", "", null);
        }


    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        sendMailtoEmployer();
        sendMailtoEmployee();
        SendMailtoClient();
        try
        {
            // SendMailtoClient();
            SaveDetails();
            Reset();
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Email has been send successfully!');", true);

        }
        catch (Exception ex)
        {
            ex.ToString();

        }
    }
    public void SaveDetails()
    {
        try
        {
            string filePath = string.Empty;
            SqlCommand cmd = new SqlCommand("STP_JobSeekers", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            if (FileUpload1.HasFile)
            {

                filePath = bClass.SaveFile(FileUpload1, "~/Worksheet/JobSeekers/", true);
            }
            else
            {
                filePath = hlpressview.NavigateUrl;
            }
            cmd.Parameters.AddWithValue("@Action", "Insertjob");
            cmd.Parameters.AddWithValue("@ApplicantName", txtApplicantName.Text.Trim());
            cmd.Parameters.AddWithValue("@ApplicantEmailId", txtApplicantEmailId.Text.Trim());
            cmd.Parameters.AddWithValue("@FilePath", filePath);
            sqlcon.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                //    Response.Write("Record submitted successfully!!");
                //RunJavaScriptFunction("SuccessMessage('Record submitted successfully!!', '" + txtApplicantName.ClientID + "')");
            }
            else
            {
                //     Response.Write("Record not submitted");
                // RunJavaScriptFunction("ErrorMessage('Record not submitted', '" + txtApplicantName.ClientID + "')"); 
            }

            sqlcon.Close();
        }
        catch (Exception Ex)
        {
            // Response.Write("Record not submitted");
            //  RunJavaScriptFunction("SuccessMessage('Record submitted successfully!!', '" + txtApplicantName.ClientID + "')");
            Ex.ToString();
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
    public string emailIDforEmployer()
    {
        string empEmailId = string.Empty;
        for (int i = 0; i < grdDetails.Rows.Count; i++)
        {
            CheckBox chk = grdDetails.Rows[i].FindControl("chkSelect") as CheckBox;
            if (chk.Checked)
            {
                Label lblEmailId = grdDetails.Rows[i].FindControl("lblEmailId") as Label;
                if (!string.IsNullOrEmpty(lblEmailId.Text))
                {
                    empEmailId = empEmailId + "," + Convert.ToString(lblEmailId.Text);
                }
            }
        }
        return empEmailId;
    }
    public void sendMailtoEmployer() 
    {
     try
        {
        string EmailIdEmployeer = emailIDforEmployer().TrimStart(',').TrimEnd(',');
        if (txtApplicantName.Text == string.Empty || EmailIdEmployeer == string.Empty)
                return;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.Append(string.Concat(new string[]
                    {
                    "<h3 style='text-align: center'>Youth Empowerment by Prothsahan Team : Job seeker detail as follows:</h3><table style='border: 1px solid #ddd;width: 100%;max-width: 100%;margin-bottom: 20px;border-spacing: 0;border-collapse: collapse;'>",
                    "<tbody style='display: table-row-group;vertical-align: middle;border-color: inherit;'>",
                    "<tr>",
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Employee Name</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtApplicantName.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Email ID</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtApplicantEmailId.Text.Trim()
                    }));
            stringBuilder.Append("</td></tr></tbody></table><br/><br/></br>");
            this.sendMail("info@prothsahanteam.org," + EmailIdEmployeer, "akhil@jupsoft.org", "Youth Empowerment Form : prothsahanteam.org", stringBuilder.ToString(), "Youth Empowerment Form : prothsahanteam.org", "", txtApplicantEmailId.Text.Trim(), null);
        }
        catch (Exception ex)
        {
            ex.ToString();
            //   this.sendMail("akhil@jupsoft.org ", "Mail from eConnect enquiry", ex.Message.ToString() + ";" + this.txtname.Text.Trim() + "," + this.txtemailid.Text.Trim() + "," + this.txtphone.Text.Trim() + "," + this.txtmessage.Text.Trim(), "Enquiry From Cloud based School Management ERP", "", null);
        }
    }
    public void sendMailtoEmployee()
    {
        try
        {
            if (txtApplicantName.Text == string.Empty )
                return;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.Append(string.Concat(new string[]
                    {
                    "<h3 style='text-align: center'>Youth Empowerment by Prothsahan Team:</h3><table style='border: 1px solid #ddd;width: 100%;max-width: 100%;margin-bottom: 20px;border-spacing: 0;border-collapse: collapse;'>",
                    "<p>Dear Concern, <br/></p>",
                    "<p>Your Job Application have been forwared to the organization.</p><br/><p>Team Prothsahanteam</p>"
                    }));
            stringBuilder.Append("");
            this.sendMail(this.txtApplicantEmailId.Text.Trim(), "akhil@jupsoft.org", "Youth Empowerment Form : prothsahanteam.org", stringBuilder.ToString(), "Youth Empowerment Form : prothsahanteam.org", "", txtApplicantEmailId.Text.Trim(), null);
        }
        catch (Exception ex)
        {
            ex.ToString();
            //   this.sendMail("akhil@jupsoft.org ", "Mail from eConnect enquiry", ex.Message.ToString() + ";" + this.txtname.Text.Trim() + "," + this.txtemailid.Text.Trim() + "," + this.txtphone.Text.Trim() + "," + this.txtmessage.Text.Trim(), "Enquiry From Cloud based School Management ERP", "", null);
        }
    }
}