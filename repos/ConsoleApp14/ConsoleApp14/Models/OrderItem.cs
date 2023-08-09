using System;
using System.Collections.Generic;

namespace ConsoleApp14.Models
{
    public partial class OrderItem
    {
        public int Id { get; set; }
        public int? OrderId { get; set; }
        public int? ProductId { get; set; }
        public decimal? UnitPrice { get; set; }
        public decimal? Quantity { get; set; }

        public virtual OrderDetail? Order { get; set; }
        public virtual Product? Product { get; set; }
    }
}
