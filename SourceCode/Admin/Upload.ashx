<%@ WebHandler Language="C#" Class="Upload" %>

using System;
using System.Web;
using System.IO;
using System.Collections.Generic;
using System.Web.SessionState;

public class Upload : IHttpHandler, IRequiresSessionState
{
          
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        context.Response.Expires = -1;
        try
        {
            string[] id = context.Request["id"].Split(',');
            string filename = context.Request["filename"];
            HttpFileCollection uploads = context.Request.Files;
            if (context.Session["Path"] == null)
            {
                DefineDictionary(context);
            }
            Dictionary<string, HttpPostedFile> list = (Dictionary<string, HttpPostedFile>)HttpContext.Current.Session["Path"];
            for (int i = 0; i < uploads.Count; i++)
            {
                string count = string.Empty;
                if(id[i]!=count)
                {
                    if (list.ContainsKey("file$" + id[i] +"$"+ i.ToString()))
                    {
                        for (int j = list.Count - 1; j >= 0; j--)
                        {
                            if (list.ContainsKey("file$" + id[i] + "$" + i.ToString()))
                            {
                                list.Remove("file$" + id[i] + "$" + i.ToString());

                            }
                        }
                        count = id[i];
                    }
                }
                HttpPostedFile hpfs = (HttpPostedFile)uploads[i];
                list.Add("file$" + id[i] + "$" + i.ToString(), hpfs);
                string FilePath = "worksheet/";
                string extension = Path.GetExtension(hpfs.FileName);
                hpfs.SaveAs(context.Server.MapPath(FilePath) + filename  + extension);
              //  context.Response.Write(context.Server.MapPath(FilePath) + filename  + extension);
            }
            context.Session["Path"] = list;
            
        }
        catch (Exception ex)
        {
            context.Response.Write("Error: " + ex.Message);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }
    
    public void DefineDictionary(HttpContext context)
    {
        Dictionary<string, HttpPostedFile> list = new Dictionary<string, HttpPostedFile>();
        context.Session["Path"] = list;
    }
     

}