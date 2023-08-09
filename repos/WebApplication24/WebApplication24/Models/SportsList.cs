using System;
using System.Collections.Generic;

namespace WebApplication23.Models
{
    public partial class SportsList
    {
        public SportsList()
        {
            InstructorLists = new HashSet<InstructorList>();
            Players = new HashSet<Player>();
        }

        public int Id { get; set; }
        public string? SportsName { get; set; }

        public virtual ICollection<InstructorList> InstructorLists { get; set; }
        public virtual ICollection<Player> Players { get; set; }
    }
}
