using System;
using System.Collections.Generic;

namespace WebApplication23.Models
{
    public partial class Player
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public int? Age { get; set; }
        public int? SportsId { get; set; }
        public int? InstructorId { get; set; }

        public virtual InstructorList? Instructor { get; set; }
        public virtual SportsList? Sports { get; set; }
    }
}
