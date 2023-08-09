using System;
using System.Collections.Generic;

namespace ConsoleApp14.Models
{
    public partial class Product
    {
        public Product()
        {
            OrderItems = new HashSet<OrderItem>();
        }

        public int Id { get; set; }
        public string? ProductName { get; set; }
        public int? SupplierId { get; set; }
        public decimal? UnitPrice { get; set; }
        public int? Package { get; set; }
        public int? IsDiscontinued { get; set; }

        public virtual Supplier? Supplier { get; set; }
        public virtual ICollection<OrderItem> OrderItems { get; set; }
    }
}
