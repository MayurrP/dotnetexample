using System;
using System.Collections.Generic;

namespace WebApplication23.Models
{
    public partial class InstructorList
    {
        public InstructorList()
        {
            Players = new HashSet<Player>();
        }

        public int Id { get; set; }
        public string? InstructorName { get; set; }
        public int? Experience { get; set; }
        public int? Age { get; set; }
        public int? SportsId { get; set; }

        public virtual SportsList? Sports { get; set; }
        public virtual ICollection<Player> Players { get; set; }
    }
}
