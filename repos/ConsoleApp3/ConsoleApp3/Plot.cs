using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp3
{
    public class Plot
    {
        public static void Main()
        {
            City city = new City();
            string name = city.Location("Pune");
            double squarefeet = city.Area(30, 50);
            Console.WriteLine($"Name of City : {name} \nSquare Feet Area : {squarefeet}");
        }
    }

    public abstract class PlotBase
    {
        public string Location(string place)
        {
            return place;
        }
        public abstract double Area(int length, int breadth);
    }

    public class City : PlotBase
    {
        public override double Area(int length, int breadth)
        {
            return length * breadth;
        }
    }
}
