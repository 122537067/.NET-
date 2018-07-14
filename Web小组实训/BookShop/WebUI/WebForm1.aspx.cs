using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookShop.InterService;
using BookShop.Entity;

namespace BookShop.WebUI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button_signup_Click(object sender, EventArgs e)
        {
            UserOperation user = new UserOperation();
            Customer customer = new Customer();

            //获取textbox信息
            customer.UserID = TextBox_CustomerID.Text.Trim();
            customer.PassWord = TextBox_CustomerPassword.Text.Trim();

            if(user.Sign_in(customer))
            {
                Response.Write("登录成功");
            }
            else
            {
                Response.Write("登录失败");
            }
        }

        protected void Button_signin_Click(object sender, EventArgs e)
        {
            UserOperation user = new UserOperation();
            Customer customer = new Customer();

            //获取textbox信息
            customer.UserID = TextBox_RegisterID.Text.Trim();
            customer.PassWord = TextBox_RegisterPassword.Text.Trim();

            if (user.Sign_up(customer))
            {
                Response.Write("注册账号:" + customer.UserID.Trim() + "成功");
            }
            else
            {
                Response.Write("已存在当前账号：" + customer.UserID);
            }
        }

        protected void Button_search_Click(object sender, EventArgs e)
        {
            
        }
    }
}