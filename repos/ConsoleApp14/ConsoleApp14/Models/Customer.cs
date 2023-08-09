using System;
using System.Collections.Generic;

namespace ConsoleApp14.Models
{
    public partial class Customer
    {
        public Customer()
        {
            OrderDetails = new HashSet<OrderDetail>();
        }

        public int Id { get; set; }
        public string FirstName { get; set; } = null!;
        public string LastName { get; set; } = null!;
        public string? City { get; set; }
        public string? Country { get; set; }
        public string? Phone { get; set; }

        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
