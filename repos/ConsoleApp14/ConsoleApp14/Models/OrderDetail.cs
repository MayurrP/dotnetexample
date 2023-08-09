using System;
using System.Collections.Generic;

namespace ConsoleApp14.Models
{
    public partial class OrderDetail
    {
        public OrderDetail()
        {
            OrderItems = new HashSet<OrderItem>();
        }

        public int Id { get; set; }
        public DateTime? OrderDate { get; set; }
        public int? CustomerId { get; set; }
        public decimal? TotalAmount { get; set; }

        public virtual Customer? Customer { get; set; }
        public virtual ICollection<OrderItem> OrderItems { get; set; }
    }
}
