using System;
using System.Collections.Generic;

namespace ConsoleApp15
{
    public partial class Review
    {
        public int Id { get; set; }
        public int? BookId { get; set; }
        public string? ReviewerName { get; set; }
        public string? Content { get; set; }
        public int? Raitng { get; set; }
        public DateTime? PulishDate { get; set; }

        public virtual Book? Book { get; set; }
    }
}
