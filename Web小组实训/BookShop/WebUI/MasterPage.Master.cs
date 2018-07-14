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
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null || Session["User"] == "")
            {
                string url = Request.Url.ToString();
                Show1.InnerText = "登录";
                Show1.HRef = "/Login.aspx?url=" + url;
                Show2.InnerText = "注册";
                Show2.HRef = "/Register.aspx?url=" + url;
            }
            else
            {
                Customer user = new Customer();
                user = Session["User"] as Customer;
                Show1.InnerHtml = "<span class='glyphicon glyphicon-user'></span>" + user.UserID;
                Show2.InnerText = "退出";
                Show2.HRef = "/HomePage.aspx?op=1";
            }
        }

        protected void btnSearch_ServerClick(object sender, EventArgs e)
        {
            Session["SearchContent"] = SearchContent.Value;
            Response.Redirect("SearchResult.aspx");
        }
    }
}