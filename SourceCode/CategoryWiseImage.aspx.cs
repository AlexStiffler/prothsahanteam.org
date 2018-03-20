using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class demo_CategoryWiseImage : System.Web.UI.Page
{
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PRTH"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindImage();
        }
    }
    private void BindImage()
    {
        StringBuilder sb = new StringBuilder();
        try
        {
            string CategoryId = Request.QueryString["CategoryId"];
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("STP_GetImageDetailsCategoryWise", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Categoryid", CategoryId);
            da.SelectCommand = cmd;
            da.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
                sb.Append("<article class='blog post-4395 page type-page status-publish hentry'>" +
                      "<div class='row'>" +
                          "<div class='col-xs-12 col-sm-10 col-sm-offset-1 caption'>" +
                              "<div class='static_faqs_div block faq'>" +
                                  "<h3 class='head' style='text-transform: uppercase;'>" + dt.Rows[0]["CategoryName"].ToString() + "</h3>" +
                                  "<p>" + dt.Rows[0]["Description"].ToString() + "</p>" +
                                  "<div class='col-xs-12'>" +
                                     "<div class='row'>");
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    sb.Append("<div id='MultipleImages' class='col-sm-3'>" +
                                       "<figure class='photo' style='float: left;margin-top: 15px;'>" +
                                        " <img src=" + dt.Rows[i]["FilePath"].ToString().Replace("../", "") + " data-darkbox=" + dt.Rows[i]["FilePath"].ToString() + " class='img-responsive frame img-thumbnail' style='width: 220px; height: 150px;'>" +
                                     "</figure>" +
                                  " </div>");
                }
                sb.Append("</div></div></div>" +
                                   " </div>" +
                               "  </div> ");
            }
            ImageId.InnerHtml = sb.ToString();
        }
        catch (Exception Ex)
        {
            Ex.ToString();
        }
    }
}