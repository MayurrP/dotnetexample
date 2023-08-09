using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


public class Animal
{
    public Animal() 
    {
        Console.WriteLine("Animal Constructor");
    }
    public void Greet()
    {
          Console.WriteLine("Animal Says Hello");
    }
    public virtual void Sing()
    {
        Console.WriteLine("Animal Song");
    }
}

public class Dog : Animal
{
    public Dog() 
    {
        Console.WriteLine("Dog Constructor");
            }
    public void Barks()
    {
        Console.WriteLine("Dog Barks");
    }
    public override void Sing()
    {
        Console.WriteLine("Dog Song");
    }
}


