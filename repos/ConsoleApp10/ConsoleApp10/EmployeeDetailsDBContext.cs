using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp10
{
    public class EmployeeDetailsDBContext : DbContext
    {
        public DbSet<EmployeeDetails> EmployeeDetails { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=(localdb)\mssqllocaldb;Database=WebApplication5.Data;Trusted_Connection=True;");
        }
    }
}
