using BookShop.Entity;
using BookShop.InterService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop.WebUI{
    public partial class AllBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IList<BookMessage> books = new List<BookMessage>();
            string show = Request.QueryString["show"] as string;
            books = (new BookOperation().SortBook("time"));
            BestNewShow.DataSource = (books.Take(1).ToList());
            BestNewShow.DataBind();
            if (show.Equals("default"))
            {
                books = (new BookOperation().SortBook(""));
                msg.InnerHtml = "<span class='fl'>读万卷书，行万里路</span>";
            }
            else if(show.Equals("popular"))
            {
                books = (new BookOperation().SortBook("score"));
                msg.InnerHtml = "<span class='fl'>精彩书籍</span>";
            }
            else if(show.Equals("newest"))
            {
                books = (new BookOperation().SortBook("time"));
                msg.InnerHtml = "<span class='fl'>最新书籍</span>";
            }
            AllBooksShow.DataSource = books;
            AllBooksShow.DataBind();
        }
    }
}