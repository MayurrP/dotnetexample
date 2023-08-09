using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp12
{
    public class Book
    {
        public int BookId { get; set; }
        public string Title { get; set; }
        public string Author { get; set; }
        public int PublicationYear { get; set; }
        public string ISBN { get; set; }
        public string Genre { get; set; }
        public decimal Price { get; set; }
        public byte InStock { get; set; }
        public Authors authors { get; set; }
    }

    public class Authors
    {
        public int AuthorId { get; set; }
        public string AuthorName { get; set; }
        public int Age { get; set; }
        public int No_Of_Books_Written { get; set; }

        public ICollection<Book> Books { get; set;}
    }
}
