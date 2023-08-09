using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using WebApplication23.Models;

namespace WebApplication24.Data
{
    public class WebApplication24Context : DbContext
    {
        public WebApplication24Context (DbContextOptions<WebApplication24Context> options)
            : base(options)
        {
        }

        public DbSet<WebApplication23.Models.SportsList> SportsList { get; set; } = default!;

        public DbSet<WebApplication23.Models.InstructorList>? InstructorList { get; set; }

        public DbSet<WebApplication23.Models.Player>? Player { get; set; }
    }
}
