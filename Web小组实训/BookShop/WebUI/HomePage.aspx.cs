using BookShop.Entity;
using BookShop.InterService;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop.WebUI
{
    public partial class HomePage : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["op"] == "1")
            {
                Session.Clear();
                Response.Redirect("/HomePage.aspx");
            }
            IList<BookMessage> books = new List<BookMessage>();
            List<BookMessage> booksShow = new List<BookMessage>();
            books = (new BookOperation()).SortBook("time");
            booksShow = books.Take(5).ToList();
            NewestBooksShow.DataSource = booksShow;
            NewestBooksShow.DataBind();

            books = (new BookOperation()).SortBook("score");
            booksShow = books.Take(3).ToList();
            //ClientScript.RegisterStartupScript(GetType(), "11", "<script>alert('" + books[23].Score + "')</script>");
            PopularBooksShow.DataSource = booksShow;
            PopularBooksShow.DataBind();
        }
    }
}