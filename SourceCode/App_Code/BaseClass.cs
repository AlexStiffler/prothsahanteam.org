using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Web.UI.WebControls;
/// <summary>
/// Summary description for BaseClass
/// </summary>
public class BaseClass : System.Web.UI.Page
{
    public string SaveFile(HttpPostedFile PostedFile, string UploadedPath, bool IsFileRename)
    {
        string path = string.Empty;
        try
        {
            if (Directory.Exists(Server.MapPath(UploadedPath)) == false)
                Directory.CreateDirectory(Server.MapPath(UploadedPath));

            string filename = string.Empty;
            //uplopadPath = "~/Worksheet/" + Convert.ToString(Session["SchoolId"]) + "/" + "ALLImages/";

            if (IsFileRename)
                filename = Guid.NewGuid() + Path.GetExtension(PostedFile.FileName);
            else
                filename = Path.GetFileName(PostedFile.FileName);

            PostedFile.SaveAs(Server.MapPath(UploadedPath) + filename);
            path = UploadedPath + filename;
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
        return path;
    }
    public string SaveFile(FileUpload fileUploadId, string UploadedPath, bool IsFileRename)
    {
        // ------------- uplopadPath like "~/worksheet/qmsr/doc/"
        string path = string.Empty;
        try
        {
            if (Directory.Exists(Server.MapPath(UploadedPath)) == false)
                Directory.CreateDirectory(Server.MapPath(UploadedPath));

            string filename = string.Empty;
            if (fileUploadId.HasFile)
            {
                if (IsFileRename)
                    filename = Guid.NewGuid() + Path.GetExtension(fileUploadId.FileName);
                else
                    filename = Path.GetFileName(fileUploadId.FileName);

                fileUploadId.SaveAs(Server.MapPath(UploadedPath) + filename);
                path = UploadedPath + filename;
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
        return path;
    }

    public string randomNumbersString(int length)
    {
        string remstr = string.Empty;
        try
        {
            string allowedChars = string.Empty;
            allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0";
            char[] sep = { ',' };
            string[] arr = allowedChars.Split(sep);
            string temp = string.Empty;
            Random rand = new Random();
            for (int i = 0; i < length; i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                remstr += temp;
            }
        }
        catch (Exception) { }
        return remstr;
    }
    public void RunJavaScriptFunction(string functionName)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), Convert.ToString(Guid.NewGuid()), "javascript:" + functionName + ";", true);
    }
    public DateTime ConvertYYYYMMDD(string dateinDDMMYYY)
    {
        char[] saparators = { '-', '/', '.' };
        string[] arr = dateinDDMMYYY.Split(saparators);
        return Convert.ToDateTime(arr[2] + "-" + arr[1] + "-" + arr[0]);
    }
}