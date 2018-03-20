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

public partial class demo_ImageGallery : System.Web.UI.Page
{
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PRTH"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindImageCategoryWise();
        }
    }
    private void BindImageCategoryWise()
    {
        StringBuilder sb = new StringBuilder(); 
        try
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("STP_GetImageDetailsCategoryWise", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;          
            cmd.Parameters.AddWithValue("@Categoryid", null);
            da.SelectCommand = cmd;
            da.Fill(dt);           
            if (dt != null && dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {              
                            sb.Append("<div class='col-sm-4'>"+
                                        "<div class='galllery-data'>"+
                                            "<div class='media border'>"+
                                                "<a href=CategoryWiseImage.aspx?CategoryId=" + dt.Rows[i]["CategoryId"].ToString() + ">" +
                                                    "<img src=" + dt.Rows[i]["FilePath"].ToString().Replace("../","") + " style='height: 200px!important; width: 290px!important; display: block; margin: 0 auto;' class='media-object border img-responsive'>" +
                                                "</a>"+
                                                "<hr style='margin-top: 2px; margin-bottom: 2px;'>"+
                                                "<div class='media-body' style='padding: 0 15px 0 15px;'>"+
                                                    "<div class='photo-album-details'>"+
                                                        "<span class='album-all-details'>"+
                                                            "<div class='row'>"+
                                                                "<div class='col-sm-12'>"+
                                                                    "<b>Album Title : </b>"+
                                                                "</div>"+
                                                                "<div class='col-sm-12'>" + dt.Rows[i]["CategoryName"].ToString() + "</div>" +
                                                            "</div>"+
                                                            "<br>"+
                                                            "<span class='album-all-details'>"+
                                                                "<span class='album-all-details'>"+
                                                                    "<div class='row'>"+
                                                                        "<div class='col-sm-6'>"+
                                                                            "<b>Total Photos  : </b>"+
                                                                        "</div>"+
                                                                        "<div class='col-sm-6'>" + dt.Rows[i]["Total"].ToString() + "</div>" +
                                                                    "</div>"+
                                                                    "<div class='row' style='position: absolute; width: 100%; display: block; bottom: 45px; left: 15px;'>"+
                                                                        "<div class='col-sm-12'>"+
                                                                            "<center>"+
                                                                                "<br><hr>"+
                                                                                "<a href=CategoryWiseImage.aspx?CategoryId=" + dt.Rows[i]["CategoryId"].ToString() +" style='color: #00C851;'>View More</a>"+
                                                                            "</center>"+
                                                                        "</div>"+
                                                                    "</div>"+
                                                                "</span>"+
                                                            "</span>"+
                                                        "</span>"+
                                                    "</div>"+
                                                "</div>"+
                                            "</div>" +
                                        "</div>"+
                                    "</div>");
                
                }
            }
            gallerycontainer.InnerHtml = sb.ToString();
        }
        catch (Exception Ex)
        {
            Ex.ToString();
        }
    }   
}