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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Customer user = new Customer();
            user.Email = txtMail.Text;
            user.PassWord = txtPassword.Text;
            user.UserID = txtName.Text;
            if (new UserOperation().Sign_up(user))
            {
                ClientScript.RegisterStartupScript(GetType(), "RegisterSuccess", "<script>alert('注册成功')</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "RegisterFail", "<script>alert('用户已存在')</script>");
            }
        }
    }
}