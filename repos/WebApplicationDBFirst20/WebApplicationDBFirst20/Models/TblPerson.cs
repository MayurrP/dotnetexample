using System;
using System.Collections.Generic;

namespace WebApplicationDBFirst20.Models
{
    public partial class TblPerson
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public string? Email { get; set; }
        public int? GenderId { get; set; }
    }
}
