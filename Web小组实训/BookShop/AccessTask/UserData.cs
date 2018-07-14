using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BookShop.Entity;

namespace BookShop.AccessTask
{
    public class UserData
    {
        BookShopDataClassesDataContext UserDB = new BookShopDataClassesDataContext();   //定义这个类的实例

        BookShopDataClassesDataContext LWordDB = new BookShopDataClassesDataContext();

        //查询登录信息是否匹配
        public bool JudgeUser(Customer register)
        {
            User user = new User();   //建立实体类

            //查询语句
            var results = from r in UserDB.User
                          where r.UserID == register.UserID && r.PassWord == register.PassWord
                          select r;

            //判断是否匹配登录信息
            if(results.Count()>0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //查询是否存在相同账号
        public bool JudgeRegister(Customer register)
        {
            User user = new User();   //建立实体类

            //查询语句,是否存在账号
            var results = from r in UserDB.User
                          where r.UserID == register.UserID
                          select r;

            //判断是否匹配登录信息
            if (results.Count() > 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        //插入新建账号
        public void Add(Customer register)
        {
            User user = new User();       //建立User实体类user

            user.UserID = register.UserID;         //账号
            user.PassWord = register.PassWord;     //密码
            user.Email = register.Email;

            UserDB.User.InsertOnSubmit(user);   //插入实体user
            UserDB.SubmitChanges();             //提交更改，增加用户
        }

        //账号更改密码
        public void Update(Customer register)
        {
            User user = new User();
            var results = from r in UserDB.User
                          where r.UserID == register.UserID
                          select r;

            if (results.Count() > 0)
            {
                throw new Exception("账号已存在!");
            }
            else
            {
                try
                {
                    user.UserID = register.UserID;    //账号
                    user.PassWord = register.PassWord;  //密码
                    UserDB.SubmitChanges();  //提交更改密码
                }
                catch(Exception e)
                {
                    throw e;
                }
            }
        }

        //发送留言
        public void PostLeaveWord(LWord lword)
        {
            LeaveWord LWordTable = new LeaveWord();  //建立LeaveWord类实例

            var judge = from r in LWordDB.LeaveWord
                        where r.UserID == lword.Getcustomer.UserID && r.ISBN == lword.Getbook.ISBN
                        select r;

            if (judge.Count() >= 1)
            {
                throw new Exception("这个用户已经评分过");
            }
            else
            {
                LWordTable.UserID = lword.Getcustomer.UserID;
                LWordTable.ISBN = lword.Getbook.ISBN;
                LWordTable.TextContent = lword.Leave_word;
                LWordTable.PostTime = lword.Post_time;
                LWordTable.Score = lword.Score;

                LWordDB.LeaveWord.InsertOnSubmit(LWordTable);
                LWordDB.SubmitChanges();  //提交更改，增加留言
            }
        }

        //通过UserID获取用户信息
        public Customer GetUserByID(string id)
        {
            Customer cus = new Customer();   //建立实体类
            //查询语句,查找账号
            var results = from r in UserDB.User
                          where r.UserID == id
                          select r;

            foreach (var r in results)
            {
                cus.UserID = r.UserID;
                cus.PassWord = r.PassWord;
            }
            return cus;
        }
    }
}
