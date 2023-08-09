using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp6
{
    public abstract class Shape
    {
        public int x;
        public Shape() { }

        public abstract double Area();
    }

    public interface IDraw
    {
        public void Draw();
    }
    public class Rectangle : Shape,IDraw
    {
        public int len;
        public int breadth;
        public Rectangle(int len, int breadth)
        {
            this.len = len;
            this.breadth = breadth;
        }

        public override double Area()
        {
            return len * breadth;
        }
        public void Draw()
        {
            Console.WriteLine("Drawing Shape");
        }
    }

    public class Circle : Shape,IDraw
    {
        public int radius;
        public Circle(int radius)
        {
            this.radius = radius;
        }

        public override double Area()
        {
            return 3.14 * radius * radius;
        }

        public void Draw()
        {
            Console.WriteLine("Drawing Shape");
        }
    }

    public class ShapeDraw
    {
        public static void Main()
        {
            Rectangle rect = new Rectangle(10, 34);
            rect.Draw();
            double result = rect.Area();
            Console.WriteLine("Area of Rectangle is : " + result);
            

            Circle circle = new Circle(10);
            circle.Draw();
            double res = circle.Area();
            Console.WriteLine("Area of Circle is : " + res);
        }

    }

}
