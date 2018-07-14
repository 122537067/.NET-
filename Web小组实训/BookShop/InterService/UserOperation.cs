using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BookShop.AccessTask;
using BookShop.Entity;

namespace BookShop.InterService
{
    public class UserOperation
    {
        //登录操作
        public bool Sign_in(Customer register)
        {
            UserData user = new UserData();

            //判断登录是否成功
            if (user.JudgeUser(register))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //注册操作
        public bool Sign_up(Customer register)
        {
            UserData user = new UserData();

            //账号或者密码不能为空
            if(String.IsNullOrEmpty(register.UserID) || String.IsNullOrEmpty(register.PassWord))
            {
                return false;
            }

            //当前账号不存在时
            if (user.JudgeRegister(register))
            {
                user.Add(register);
                return true;
            }
            else
            {
                return false;
            }
        }

        //发送留言
        public void PostLWord(LWord lword)
        {
            string LwordContent = lword.Leave_word;
            float LwordScore = lword.Score;
            string LwordISBN = lword.Getbook.ISBN;
            string LwordUserID = lword.Getcustomer.UserID;
            string LwordEmai = lword.Getcustomer.Email;
            DateTime LwordPostTime = new DateTime();
            LwordPostTime = DateTime.Now;

            (new UserData()).PostLeaveWord(lword);
            (new BookData()).Average_Score((new BookData()).GetBook(LwordISBN));      //更新书本评分
        }

        //获取用户信息
        public Customer GetCustomer(string id)
        {
            return (new UserData()).GetUserByID(id);
        }
    }
}
