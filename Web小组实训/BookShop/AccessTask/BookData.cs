using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BookShop.Entity;

namespace BookShop.AccessTask
{
    
    public class BookData
    {
        BookShopDataClassesDataContext BookDB = new BookShopDataClassesDataContext();  //定义这个类实例

        //时间比较
        int CompareTime(BookMessage a, BookMessage b)
        {
            return b.Time.CompareTo(a.Time);
        }

        //评分比较
        int CompareScore(BookMessage a,BookMessage b)
        {
            return b.Score.CompareTo(a.Score);
        }

        //获取作品排序
        public IList<BookMessage> SortBooks(string judge)
        {
            List<BookMessage> sort_books = new List<BookMessage>();  //定义书本数组

            //根据书本的ISBN、书名、作者 关键字 进行查询
            var result = from r in BookDB.Book
                         select r;
            foreach (var r in result)
            {
                BookMessage bookmessage = new BookMessage();
                bookmessage.ISBN = r.ISBN;                  //ISBN
                bookmessage.BookName = r.BookName;          //书名
                bookmessage.Writer = r.Writer;              //作者
                bookmessage.Time = r.Time;                   //上传时间
                bookmessage.Page = r.Page;                   //页数
                bookmessage.PublishingHouse = r.PublishingHouse;   //出版社
                bookmessage.Price = (float)r.price;                 //价钱 ??(不强转float报错)??
                bookmessage.Photo = r.Photo;                 //书本图片路径
                bookmessage.Introduction = r.Introduction;   //简介
                bookmessage.Score = (float)r.Score;                    //评分默认为0

                sort_books.Add(bookmessage); //增加这个书本到数组
            }
            //当为time时，按时间排序，当为score时，按评分排序,否则按默认排序
            if (judge == "time")
            {
                sort_books.Sort(CompareTime);
            }
            else if(judge == "score")
            {
                sort_books.Sort(CompareScore);
            }
            return sort_books;
        }

        //获取最新作品

        //添加图书
        public void Add(BookMessage bookmessage)
        {
            Book book = new Book();              //建立Book实体例book

            book.ISBN = bookmessage.ISBN;                 //ISBN
            book.BookName = bookmessage.BookName;          //书名
            book.Writer = bookmessage.Writer;                //作者
            book.PublishingHouse = bookmessage.PublishingHouse;   //出版社
            book.Time = bookmessage.Time;                   //上传时间
            book.Page = bookmessage.Page;                   //页数
            book.price = bookmessage.Price;                 //价钱
            book.Photo = bookmessage.Photo;                 //书本图片路径
            book.Introduction = bookmessage.Introduction;   //简介
            book.Score = 0;                    //评分默认为0

            BookDB.Book.InsertOnSubmit(book);  //插入实体book
            BookDB.SubmitChanges();            //提交更改
        }


        //模糊查询（ISBN,书名，作者）
        public IList<BookMessage> Fuzzy_Search(string text)
        {
            List<BookMessage> search_books = new List<BookMessage>();  //定义书本数组

            //根据书本的ISBN、书名、作者 关键字 进行查询
            var result = from r in BookDB.Book
                         where (r.ISBN.Contains(text)) || (r.BookName.Contains(text)) || (r.Writer.Contains(text))
                         select r;

            foreach(var r in result)
            {
                BookMessage bookmessage = new BookMessage();
                bookmessage.ISBN = r.ISBN;                  //ISBN
                bookmessage.BookName = r.BookName;          //书名
                bookmessage.Writer = r.Writer;              //作者
                bookmessage.Time = r.Time;                   //上传时间
                bookmessage.Page = r.Page;                   //页数
                bookmessage.PublishingHouse = r.PublishingHouse;   //出版社
                bookmessage.Price = (float)r.price;                 //价钱 ??(不强转float报错)??
                bookmessage.Photo = r.Photo;                 //书本图片路径
                bookmessage.Introduction = r.Introduction;   //简介
                bookmessage.Score = (float)r.Score;                    //评分默认为0

                search_books.Add(bookmessage); //增加这个书本到数组
            }
            return search_books; //返回书本BookMessage的数组
        }

        //根据书本的ISBN获取书本
        public BookMessage GetBook(string text)
        {
            BookMessage getbook = new BookMessage();  //定义书本

            //根据书本的ISBN
            var result = from r in BookDB.Book
                         where r.ISBN == text.Trim()
                         select r;

            foreach (var r in result)
            {
                BookMessage bookmessage = new BookMessage();
                bookmessage.ISBN = r.ISBN;                  //ISBN
                bookmessage.BookName = r.BookName;          //书名
                bookmessage.Writer = r.Writer;              //作者
                bookmessage.Time = r.Time;                   //上传时间
                bookmessage.Page = r.Page;                   //页数
                bookmessage.PublishingHouse = r.PublishingHouse;   //出版社
                bookmessage.Price = (float)r.price;                 //价钱 ??(不强转float报错)??
                bookmessage.Photo = r.Photo;                 //书本图片路径
                bookmessage.Introduction = r.Introduction;   //简介
                bookmessage.Score = (float)r.Score;                    //评分默认为0

                getbook = bookmessage;
            }
            return getbook; //返回书本BookMessage的数组
        }

        //获取今年的书本
        public IList<BookMessage> GetNewsBook()
        {
            DateTime years = new DateTime();

            //根据今年时间查询
            var result = from r in BookDB.Book
                         where r.Time.Year >= years.Year -1
                         select r;

            List<BookMessage> new_books = new List<BookMessage>();  //定义最新书本数组

            foreach (var r in result)
            {
                BookMessage bookmessage = new BookMessage();
                bookmessage.ISBN = r.ISBN;                  //ISBN
                bookmessage.BookName = r.BookName;          //书名
                bookmessage.Writer = r.Writer;              //作者
                bookmessage.Time = r.Time;                   //上传时间
                bookmessage.Page = r.Page;                   //页数
                bookmessage.PublishingHouse = r.PublishingHouse;   //出版社
                bookmessage.Price = (float)r.price;                 //价钱 ??(不强转float报错)??
                bookmessage.Photo = r.Photo;                 //书本图片路径
                bookmessage.Introduction = r.Introduction;   //简介
                bookmessage.Score = (float)r.Score;                    //评分默认为0

                new_books.Add(bookmessage); //增加这个书本到数组
            }
            return new_books; //返回书本BookMessage的数组
        }

        //获取书本留言内容
        public IList<LWord> GetLeaveWord(string text)
        {
            List<LWord> leavewords = new List<LWord>();  //定义留言数组

            //根据书本的ISBN查找
            var result = from r in BookDB.LeaveWord
                         where r.ISBN == text.Trim()
                         select r;

            foreach (var r in result)
            {
                LWord leaveword = new LWord();
                leaveword.Getbook.ISBN = r.ISBN;
                leaveword.Getcustomer.UserID = r.UserID;
                leaveword.Post_time = r.PostTime;
                leaveword.Score = (float)r.Score;
                leaveword.Leave_word= r.TextContent;

                leavewords.Add(leaveword); //增加这个书本的留言到数组
            }
            return leavewords; //返回书本留言的数组
        }

        //评分计算
        public void Average_Score(BookMessage book)
        {
            var result = from r in BookDB.LeaveWord
                         where r.ISBN == book.ISBN
                         select r;

            float sum = 0;   //总分
            float aver;      //平均分

            foreach(var r in result)
            {
                sum = sum + (float)r.Score;
            }
            aver = sum / (result.Count());   //算出平均分数

            //找出图书
            var result_book = from r in BookDB.Book
                              where r.ISBN == book.ISBN
                              select r;
            
            foreach(Book r in result_book)
            {
                r.Score = aver;  //修改评分
            }

            BookDB.SubmitChanges();
        }
      
    }
}
