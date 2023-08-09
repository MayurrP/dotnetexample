using ConsoleApp13.Models;

class Program
{
    static void Main()
    {
        using (var context = new NorthWindContext())
        {
            List<Customer> customers = context.Customers.ToList();
            foreach (var customer in customers)
            {
                Console.WriteLine(customer.CompanyName);
            }
        }
    }
}