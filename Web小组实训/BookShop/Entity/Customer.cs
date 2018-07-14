using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookShop.Entity
{
    //注册用户实体类
    public class Customer
    {
        private string user_ID;    //用户名称
        private string pass_word;    //用户密码
        private string email;        //用户邮箱

        //设置和获取用户名称
        public string UserID
        {
            set { this.user_ID = value; }
            get { return (this.user_ID); }
        } 

        //设置和获取用户密码
        public string PassWord
        {
            set { this.pass_word = value; }
            get { return (this.pass_word); }
        }

        //设置和获取邮箱
        public string Email
        {
            set { this.email = value; }
            get { return (this.email); }
        }
    }
}
