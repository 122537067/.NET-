using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BookShop.AccessTask;
using BookShop.Entity;

namespace BookShop.InterService
{
    public class BookOperation
    {
        //查询函数
        public IList<BookMessage> FuzzySearch(string text)
        {
            return (new BookData()).Fuzzy_Search(text);  //查询
        }

        //新书获取函数
        public IList<BookMessage> NewBook()
        {
            return (new BookData()).GetNewsBook(); 
        }

        //获取留言函数
        public IList<LWord> GetLeaveWord(string isbn)
        {
            return (new BookData()).GetLeaveWord(isbn);
        }

        //按时间或者默认排序
        public IList<BookMessage> SortBook(string judge)
        {
            return (new BookData()).SortBooks(judge); //当judge为time时，按时间排序，当为score时，按评分排序,否则按默认排序
        }

        //按ISBN得到书本信息
        public BookMessage GetBook(string isbn)
        {
            return (new BookData()).GetBook(isbn);
        }
    }
}
