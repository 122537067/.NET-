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
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string searchContent = Session["SearchContent"] as string;
            Msg.InnerText = "搜索“" +searchContent+ "”";
            IList<BookMessage> books = new List<BookMessage>();
            books = (new BookOperation().FuzzySearch(searchContent));
            SearchResultShow.DataSource = books;
            SearchResultShow.DataBind();

            books = (new BookOperation().SortBook("time"));
            BestNewShow.DataSource = (books.Take(1).ToList());
            BestNewShow.DataBind();
        }
    }
}