using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.IO;

public partial class demo_ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void Reset()
    {
        txtName.Text = string.Empty;
        txtemail.Text = string.Empty;
        txtsub.Text = string.Empty;
        txtMsg.Text = string.Empty;
        txtemail.Text = string.Empty;
        txtCity.Text = string.Empty;
        txtPhoneNo.Text = string.Empty;
        txtAddress.Text = string.Empty;
        ddlCountry.SelectedIndex = 0;
    }
    public void sendMail(string ToAddress,string bcc, string subject, string Mailbody, string displayname, string AttachmentPath, string ReplyTo, string BccToAddress = null)
    {
        try
        {
            MailMessage mailMessage = new MailMessage();

            mailMessage.To.Add(ToAddress);
            mailMessage.ReplyToList.Add(ReplyTo);                       //= new MailAddress(ReplyTo);

            if (BccToAddress != null)
            {

                mailMessage.Bcc.Add(BccToAddress);

            }
            mailMessage.From = new MailAddress("donotreply@jupsoft.org", displayname);

            mailMessage.Subject = subject;

            if (AttachmentPath.Trim() != "")
            {

                Attachment item = new Attachment(AttachmentPath);

                mailMessage.Attachments.Add(item);

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

            if (txtName.Text == string.Empty)
                return;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.Append(string.Concat(new string[]
                    {
                    "<h3 style='text-align: center'>Enquiry from prothsahanteam</h3><table style='border: 1px solid #ddd;width: 100%;max-width: 100%;margin-bottom: 20px;border-spacing: 0;border-collapse: collapse;'>",
                    "<tbody style='display: table-row-group;vertical-align: middle;border-color: inherit;'>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Name </b>:</td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtName.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Email ID</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtemail.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Subject</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtsub.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Message</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtMsg.Text.Trim(),
                        "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Email ID</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtemail.Text.Trim(),
                           "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>City</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtCity.Text.Trim(),
                        "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Phone No.</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtPhoneNo.Text.Trim(),
                        "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Address</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtAddress.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Country</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.ddlCountry.SelectedItem.Text.ToString()
                    }));
            stringBuilder.Append("</td></tr></tbody></table><br/><br/></br>");
            this.sendMail("info@prothsahanteam.org", "akhil@jupsoft.org", "Online Contact Form : prothsahanteam.org", stringBuilder.ToString(), "Online Contact Form : prothsahanteam.org", "", txtemail.Text.Trim(), null);
        }
        catch (Exception ex)
        {
            ex.ToString();
            //   this.sendMail("akhil@jupsoft.org ", "Mail from eConnect enquiry", ex.Message.ToString() + ";" + this.txtname.Text.Trim() + "," + this.txtemailid.Text.Trim() + "," + this.txtphone.Text.Trim() + "," + this.txtmessage.Text.Trim(), "Enquiry From Cloud based School Management ERP", "", null);
        }

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PRTH"].ConnectionString);

            SqlCommand cmd = new SqlCommand("STP_Contact", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "EnquirySubmit");
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Subject", txtsub.Text);
            cmd.Parameters.AddWithValue("@Message", txtMsg.Text);
            cmd.Parameters.AddWithValue("@City", txtCity.Text);
            cmd.Parameters.AddWithValue("@Country", ddlCountry.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@Phone_Number", txtPhoneNo.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            sqlcon.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
                //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "none", "<script>$('#modal-success').modal('show');</script>", false);               
             //   Response.Write("Submitted successfully");
          
            SendMailtoClient();
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Form Submitted successfully');", true);
            Reset();
            sqlcon.Close();
        }
        catch (Exception Ex)
        {
            Ex.ToString();
        }
    }
}