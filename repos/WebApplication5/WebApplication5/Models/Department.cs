﻿namespace WebApplication5.Models
{
    public class Department
    {
        public int DepartmentId { get; set; }
        public string DepartmentName { get; set; }
        public ICollection<Employee> Employees { get; } = new List<Employee>();
    }
}
