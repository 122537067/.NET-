using BookShop.Entity;
using BookShop.InterService;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop.WebUI
{
    public partial class BookContentShow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"] == null || Session["User"] == "")
            {
                ClientScript.RegisterStartupScript(GetType(), "LoginOverTime", "<script>alert('登录超时，请重新登录');window.location.href ='HomeLogin.aspx'</script>");
                string url = Request.Url.ToString();
                Response.Redirect("Login.aspx?url=" + url);
            }

            string ISBN = Request.QueryString["ISBN"] as string;
            BookMessage book = new BookMessage();
            book = (new BookOperation().GetBook(ISBN));
            //Response.Write("<script>alert('"+book.BookName+"')</script>");
            bookName.InnerText = book.BookName;
            img.Src = book.Photo;
            writer.InnerText += book.Writer;
            pubic.InnerText += book.PublishingHouse;
            time.InnerText += book.Time;
            isbn.InnerText += book.ISBN;

            string filepath = Server.MapPath(book.Introduction);
            FileStream fs = new FileStream(filepath, FileMode.Open, FileAccess.Read);
            StreamReader sr = new StreamReader(fs, UnicodeEncoding.GetEncoding("GB2312"));


            string read = sr.ReadToEnd();
            if (read != "null")
            {
                ShowTxt.InnerText = read + "\r\n";
            }

        }

        protected void btnLWord_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Comment.aspx?ISBN=" + Request.QueryString["ISBN"] as string);
        }
    }
}