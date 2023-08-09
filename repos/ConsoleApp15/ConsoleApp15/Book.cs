using System;
using System.Collections.Generic;

namespace ConsoleApp15
{
    public partial class Book
    {
        public Book()
        {
            Checkouts = new HashSet<Checkout>();
            Reviews = new HashSet<Review>();
        }

        public int Id { get; set; }
        public string? Title { get; set; }
        public string? Author { get; set; }
        public DateTime? PublishedDate { get; set; }
        public string? Isbn { get; set; }

        public virtual ICollection<Checkout> Checkouts { get; set; }
        public virtual ICollection<Review> Reviews { get; set; }
    }
}
