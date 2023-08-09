using System;
using System.Collections.Generic;

namespace ConsoleApp15
{
    public partial class User
    {
        public User()
        {
            Checkouts = new HashSet<Checkout>();
        }

        public int Id { get; set; }
        public string? FullName { get; set; }
        public bool? Enabled { get; set; }
        public DateTime? LastLogin { get; set; }

        public virtual ICollection<Checkout> Checkouts { get; set; }
    }
}
