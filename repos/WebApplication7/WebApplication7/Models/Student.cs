using System.ComponentModel.DataAnnotations;
using System.Collections;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebApplication7.Models
{
    [Table("StudentMaster")]
    public class Student
    {
        [Key]
        public int StudentId { get; set; }
        public string Title { get; set; }
        public string StudentName { get; set; }

        [DataType(DataType.Date)]
        public DateTime JoiningDate { get; set; }
        public int PhoneNumber { get; set; }
        public string Location { get; set; }
    }
}
