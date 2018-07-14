using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookShop.Entity
{
    //书本信息实体类
    public class BookMessage
    {
        private string isbn;        //书本ISBN码
        private string book_name;   //书名
        private string writer;      //作者
        private string publishingHouse;   //出版社
        private DateTime time;      //上传时间
        private int page;           //页数
        private float price;        //价钱
        private string photo;       //书本图片路径
        private float score;        //评分
        private string introduction;//简介

        //设置和获取书本ISBN码
        public string ISBN
        {
            set { this.isbn = value; }
            get { return (this.isbn); }
        }

        //设置和获取书名
        public string BookName
        {
            set { this.book_name = value; }
            get { return (this.book_name); }
        }

        //设置和获取书本作者
        public string Writer
        {
            set { this.writer = value; }
            get { return (this.writer); }
        }

        //设置和获取出版社
        public string PublishingHouse
        {
            set { this.publishingHouse = value; }
            get { return (this.publishingHouse); }
        }

        //设置和获取书本上传时间
        public DateTime Time
        {
            set { this.time =value; }
            get { return (this.time); }
        }

        //设置和获取书本页数
        public int Page
        {
            set { this.page = value; }
            get { return (this.page); }
        }

        //设置和获取书本价钱
        public float Price
        {
            set { this.price = value; }
            get { return (this.price); }
        }

        //设置和获取书本图片路径
        public string Photo
        {
            set { this.photo = value; }
            get { return (this.photo); }
        }

        //设置和获取评分
        public float Score
        {
            set { this.score = value; }
            get { return (this.score); }
        }

        //设置和获取图书评分
        public string Introduction
        {
            set { this.introduction = value; }
            get { return (this.introduction); }
        }
    }
}
