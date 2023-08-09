using ConsoleApp14.Models;

class Program
{
    static void Main()
    {
        using (var context = new EcommerceContext())
        {
            Console.WriteLine("Customer Details");
            List<Customer> customers = context.Customers.ToList();
            foreach (var customer in customers)
            {
                Console.WriteLine(customer.Id+"   "+customer.FirstName+"    "+customer.LastName);
            }

            Console.WriteLine("\n\nSupplier Details");
            List<Supplier> suppliers = context.Suppliers.ToList();
            foreach (var customer in suppliers)
            {
                Console.WriteLine(customer.Id + "   " + customer.CompanyName + "    " + customer.ContactName);
            }
        }
    }
}