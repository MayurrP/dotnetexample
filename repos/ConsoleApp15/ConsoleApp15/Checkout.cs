using System;
using System.Collections.Generic;

namespace ConsoleApp15
{
    public partial class Checkout
    {
        public int Id { get; set; }
        public int? UserId { get; set; }
        public int? BookId { get; set; }
        public DateTime? CheckoutDate { get; set; }
        public DateTime? ReturnDate { get; set; }

        public virtual Book? Book { get; set; }
        public virtual User? User { get; set; }
    }
}
