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

public partial class demo_DonationMst : BaseClass
{
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PRTH"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
        else
            RunJavaScriptFunction("datepick();");

    }
    private void Reset()
    {
        ddlDonationType.SelectedIndex = 0;
        txtFirstName.Text = string.Empty;
        txtLastName.Text = string.Empty;
        ddldate.SelectedIndex = 0;
        ddlMonth.SelectedIndex = 0;
        ddlYear.SelectedIndex = 0;
        txtPANNo.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtMobileNo.Text = string.Empty;
        txtPhoneNo.Text = string.Empty;
        txtOrganisation.Text = string.Empty;
        txtAddress.Text = string.Empty;
        txtCity.Text = string.Empty;
        ddlState.SelectedIndex = 0;
        ddlCountry.SelectedIndex = 0;
        txtZip.Text = string.Empty;
        ddlCitizen.SelectedIndex = 0;
        txtAdditional.Text = string.Empty;
    }
    public void sendMail(string ToAddress, string bcc, string subject, string Mailbody, string displayname, string AttachmentPath, string ReplyTo, string BccToAddress = null)
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
      

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {

            if (txtFirstName.Text == string.Empty)
                return;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.Append(string.Concat(new string[]
                    {
                    "<h3 style='text-align: center'>Donation Form</h3><table style='border: 1px solid #ddd;width: 100%;max-width: 100%;margin-bottom: 20px;border-spacing: 0;border-collapse: collapse;'>",
                    "<tbody style='display: table-row-group;vertical-align: middle;border-color: inherit;'>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Donation Type </b>:</td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.ddlDonationType.SelectedItem.Text.ToString(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>First Name</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtFirstName.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Last Name</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtLastName.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>DOB | Date</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.ddldate.SelectedItem.Text.ToString(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>DOB | Month</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.ddlMonth.SelectedItem.Text.ToString(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>DOB | Year</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.ddlYear.SelectedItem.Text.ToString(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Pan No.</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtPANNo.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Email ID</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtEmail.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Mobile No.</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtMobileNo.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Phone No.</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtPhoneNo.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Organization</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtOrganisation.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Address</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtAddress.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>City</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtCity.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>State</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.ddlState.SelectedItem.Text.ToString(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Country</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.ddlCountry.SelectedItem.Text.ToString(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Pincode</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtZip.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Citizenship</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.ddlCitizen.SelectedItem.Text.ToString(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Additional Note</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtAdditional.Text.Trim()
                    }));
            stringBuilder.Append("</td></tr></tbody></table><br/><br/></br>");
            this.sendMail("info@prothsahanteam.org", "akhil@jupsoft.org", "Donation Form : prothsahanteam.org", stringBuilder.ToString(), "Donation Form : prothsahanteam.org", "", txtEmail.Text.Trim(), null);
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Form Submitted successfully');", true);
        }
        catch (Exception ex)
        {
            ex.ToString();
            //   this.sendMail("akhil@jupsoft.org ", "Mail from eConnect enquiry", ex.Message.ToString() + ";" + this.txtname.Text.Trim() + "," + this.txtemailid.Text.Trim() + "," + this.txtphone.Text.Trim() + "," + this.txtmessage.Text.Trim(), "Enquiry From Cloud based School Management ERP", "", null);
        }
        SqlCommand cmd = new SqlCommand("STP_ManageDonationMst", sqlcon);
        try
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "InsertDonation");
            cmd.Parameters.AddWithValue("@DonationType", ddlDonationType.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
            cmd.Parameters.AddWithValue("@DOB", ConvertYYYYMMDD(ddldate.SelectedValue.ToString() + "/" + ddlMonth.SelectedValue.ToString() + "/" + ddlYear.SelectedValue.ToString()).ToString("dd/MMM/yyyy"));
            cmd.Parameters.AddWithValue("@PanNo", txtPANNo.Text);
            cmd.Parameters.AddWithValue("@EmailId", txtEmail.Text);
            cmd.Parameters.AddWithValue("@MobileNo", txtMobileNo.Text);
            cmd.Parameters.AddWithValue("@PhoneNo", txtPhoneNo.Text);
            cmd.Parameters.AddWithValue("@OrganisationName", txtOrganisation.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@City", txtCity.Text);
            cmd.Parameters.AddWithValue("@Country", ddlCountry.SelectedValue.ToString());
            if (ddlCountry.SelectedItem.Text.Trim().ToLower() == "india")
            {
                cmd.Parameters.AddWithValue("@State", ddlState.SelectedValue.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@State", txtState.Text);
            }
            cmd.Parameters.AddWithValue("@PinCode", txtZip.Text);
            cmd.Parameters.AddWithValue("@Citizenship", ddlCitizen.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@AdditionalNote", txtAdditional.Text);
            cmd.Parameters.AddWithValue("@ModeOfPayment", ddlPaymentMode.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@TransferCode", txtTransferCode.Text);
            cmd.Parameters.AddWithValue("@Amount", Convert.ToDecimal(txtAmount.Text));
            cmd.Parameters.AddWithValue("@DrawnOn", txtDrawnOn.Text);
            cmd.Parameters.AddWithValue("@DrawnDate", ConvertYYYYMMDD(txtdate.Value).ToString("dd/MMM/yyyy"));
            sqlcon.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)

                RunJavaScriptFunction("SuccessMessage('Record submitted successfully!!', '" + txtFirstName.ClientID + "')");
            else
                RunJavaScriptFunction("ErrorMessage('Record not submitted', '" + txtFirstName.ClientID + "')");

            SendMailtoClient();
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Form Submitted successfully');", true);
        }
        catch (Exception Ex)
        {
            Ex.ToString();
        }
        Reset();
    }
    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCountry.SelectedItem.Text.Trim().ToLower() == "india")
        {
            drpState.Style.Add("display", "block");
            dvState.Style.Add("display", "none");
        }
        else
        {
            drpState.Style.Add("display", "none");
            dvState.Style.Add("display", "block");
        }
    }
}