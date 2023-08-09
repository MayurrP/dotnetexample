using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using WebApplicationAccount19.Models;

namespace WebApplicationAccount19.Data
{
    public class WebApplicationAccount19Context : DbContext
    {
        public WebApplicationAccount19Context (DbContextOptions<WebApplicationAccount19Context> options)
            : base(options)
        {
        }

        public DbSet<WebApplicationAccount19.Models.Account> Account { get; set; } = default!;
    }
}
