using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Xml.Linq;

namespace WebApplication5.Models
{
    public class Employee
    {
        public int Id { get; set; }
        public string FirtName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public double Salary { get; set; }

     //   [Display(Name = "Department")]
        public int DepartmentId { get; set; }

     //   [ForeignKey("DepartmentId")]
        public Department Departments { get; set; }

    }
}
