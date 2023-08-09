using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp7
{
    public class WhenAll
    {
        static async Task Main()
        {
            List<string> urls = new List<string>()
            {
                "https://www.example.com",
                "https://www.google.com",
                "https://www.microsoft.com"
            };

            try
            {
                List<Task<string>> downloadTask = new List<Task<string>>();

                foreach (string url in urls)
                {
                    downloadTask.Add(DownloadDataAsync(url));
                }

                string[] results = await Task.WhenAll(downloadTask);

                Console.WriteLine("Download Data");

                foreach (string result in results)
                {
                    Console.WriteLine(result);
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine($"An error occured: {ex.Message}");
            }
            Console.WriteLine("Perss to exit");
            Console.ReadKey();
        }

        static async Task<string> DownloadDataAsync(string url)
        {
            using(HttpClient client = new HttpClient())
            {
                HttpResponseMessage response = await client.GetAsync(url);  
                response.EnsureSuccessStatusCode();

                string data = await response.Content.ReadAsStringAsync();
                return data;
            }
        }
    }
}
