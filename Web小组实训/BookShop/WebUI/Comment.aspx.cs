using BookShop.Entity;
using BookShop.InterService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop.WebUI
{
    public partial class Comment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"] == null || Session["User"] == "")
            {
                ClientScript.RegisterStartupScript(GetType(), "LoginOverTime", "<script>alert('登录超时，请重新登录')</script>");
                string url = Request.Url.ToString();
                Response.Redirect("Login.aspx?url=" + url);
            }

            string ISBN = Request.QueryString["ISBN"] as string;
            BookMessage book = new BookMessage();
            book = (new BookOperation().GetBook(ISBN));
            bookName.InnerText = book.BookName;
            img.Src = book.Photo;
            writer.InnerText += book.Writer;
            pubic.InnerText += book.PublishingHouse;
            time.InnerText += book.Time;
            isbn.InnerText += book.ISBN;

            IList<LWord> LWords = new List<LWord>();
            LWords = (new BookOperation().GetLeaveWord(ISBN));
            LWordsShow.DataSource = LWords;
            LWordsShow.DataBind();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('" + hiddenMessage.Value + "')</script>");
            Customer user = new Customer();
            user = Session["User"] as Customer;
            //user = (new UserOperation().GetCustomer("00001"));
            //Response.Write("<script>alert('" + Session["User"] as string + "')</script>");
            BookMessage book = new BookMessage();
            book = (new BookOperation().GetBook((Request.QueryString["ISBN"] as string)));
            LWord lword = new LWord();
            lword.Getbook.ISBN = book.ISBN;
            lword.Getcustomer.UserID = user.UserID;
            lword.Leave_word = lytext.InnerText;
            lword.Score = (float)Convert.ToDouble(hiddenMessage.Value);
            (new UserOperation()).PostLWord(lword);
            ClientScript.RegisterStartupScript(GetType(), "PostSuccess", "<script>alert('发送成功');window.location.href ='Comment.aspx?ISBN=" + book.ISBN + "'</script>");
        }
    }
}