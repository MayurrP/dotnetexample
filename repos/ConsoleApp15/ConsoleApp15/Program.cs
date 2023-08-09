using ConsoleApp15;

class Program
{
    static void Main()
    {
        using (var context = new BookStoreContext())
        {
            Console.WriteLine("Books Details");
            List<Book> books = context.Books.ToList();
            foreach (var book in books)
            {
                Console.WriteLine(book.Id + "   " + book.Author + "    " + book.Title);
            }
        }

        using (var context = new BookStoreContext())
        {
            Console.WriteLine("\n\nUsers Details");
            List<User> users = context.Users.ToList();
            foreach (var user in users)
            {
                Console.WriteLine(user.Id + "   " + user.FullName + "    " + user.LastLogin);
            }
        }

        using (var context = new BookStoreContext())
        {
            Console.WriteLine("\n\nAddress Details");
            List<Address> addresses = context.Addresses.ToList();
            foreach (var address in addresses)
            {
                Console.WriteLine(address.UserId+ "   " + address.Street + "    " + address.City + "    " + address.State);
            }
        }

        using (var context = new BookStoreContext())
        {
            Console.WriteLine("\n\nReviews Details");
            List<Review> reviews = context.Reviews.ToList();
            foreach (var review in reviews)
            {
                Console.WriteLine(review.Id + "   " + review.BookId + "    " + review.ReviewerName + "    " + review.Content + "    " + review.Raitng + "    " + review.PulishDate);
            }
        }

        using (var context = new BookStoreContext())
        {
            Console.WriteLine("\n\nCheckOut Details");
            List<Checkout> reviews = context.Checkouts.ToList();
            foreach (var review in reviews)
            {
                Console.WriteLine(review.Id + "   " + review.BookId + "    " + review.UserId );
            }
        }
    }
}