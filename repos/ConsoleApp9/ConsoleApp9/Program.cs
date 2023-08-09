using ConsoleApp9;
using Microsoft.EntityFrameworkCore;

using (var dbContext = new ProductDBContext())
{
    List<Product> products = dbContext.Products.FromSqlRaw("EXEC ProductsSP").ToList();

    foreach (var product in products)
    {
        Console.WriteLine($"Product : {product.Id}, {product.Name}, {product.Price}");   
    }
}