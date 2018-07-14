using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookShop.Entity
{
    //留言板实体类
    public class LWord
    {
        private BookMessage book = new BookMessage();  //书本信息
        private Customer customer = new Customer();   //用户
        private string leave_word;                     //留言
        private DateTime post_time;                    //上传时间
        private float score;                           //分数
        
        //从BookMessage获取书本的信息
        public BookMessage Getbook
        {
            set { this.book = value; }
            get { return this.book; }
        }

        //从Customer获取留言人的信息
        public Customer Getcustomer
        {
            set { this.customer = value; }
            get { return this.customer; }
        }

        //设置和获取留言内容
        public string Leave_word
        {
            set { this.leave_word = value; }
            get { return (this.leave_word); }
        }

        //设置和获取留言时间
        public DateTime Post_time
        {
            set { this.post_time = value; }
            get { return (this.post_time); }
        }

        //设置和获取用户打分
        public float Score
        {
            set { this.score = value; }
            get { return (this.score); }
        }

    }
}
