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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Customer user = new Customer();
            user.UserID = txtAccounts.Text;
            user.PassWord = txtPassword.Text;
            user.Email = "";
            if(new UserOperation().Sign_in(user))
            {
                Session["User"] = user;
                string url = Request.QueryString["url"] as string;
                Response.Redirect(url);
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "LoginFail", "<script>alert('用户名或密码错误！')</script>");
            }
        }
    }
}