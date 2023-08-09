using System;

//public class SquareArray
//{
//    public static void Main()
//    {
//        int[] array = new int[4];
//        array[0] = 1;
//        array[1] = 2;
//        array[2] = 3;
//        array[3] = 4;
//     int[] outarray = new int[array.Length];

//    for(int i = 0; i < array.Length;i++)
//        {
//            outarray[i] = array[i] * array[i];
//        }
//        Console.WriteLine("Squares");
//        for (int i = 0; i < outarray.Length;i++)
//        {
//            Console.WriteLine(outarray[i]);
//        }
//    }

//}

//2. Reverse array

public class SquareArray
{
    public static void Main()
    {
        int[] array = new int[4];
        array[0] = 1;
        array[1] = 2;
        array[2] = 3;
        array[3] = 4;
        int[] outarray = new int[array.Length];
        int rev = 0;
        Console.WriteLine("Before Reverse");
        for (int i = 0; i < array.Length; i++)
        {
            Console.Write(array[i] + " ");
        }

        for (int i = array.Length - 1; i >= 0; i--)
        {
            outarray[rev] = array[i];
            rev++;
        }
        Console.WriteLine("reverse of array");
        for (int i = 0; i < outarray.Length; i++)
        {
            Console.Write(outarray[i] + "  ");
        }
    }

}




//3. Remove Duplicate

//public class SquareArray
//{
//    public static void Main()
//    {
//        int[] array = new int[10];
//        array[0] = 10;
//        array[1] = 2;
//        array[2] = 32;
//        array[3] = 43;
//        array[4] = 50;
//        array[5] = 10;
//        array[6] = 32;
//        array[7] = 43;
//        array[8] = 40;
//        array[9] = 110;


//        int[] outarray = new int[array.Length];
//        int k = 0;

//        for (int i = 0; i < array.Length; i++)
//        {
//            int count = 0;
//            for(int j = 0;j < array.Length; j++)
//            {
//                if (array[i] == array[j])
//                {
//                    count++;
//                }
//            }
//            if(count == 1)
//            {
//                outarray[k] = array[i];
//                k++;
//            }
//        }

//        Console.WriteLine("Before Removing Duplicste Values");
//        for (int i = 0; i < array.Length; i++)
//        {
//            Console.Write(array[i] + " ");
//        }

//        Console.WriteLine("\n\nAfter Removing Duplicste Values");
//        for (int i = 0;i < k; i++)
//        {
//            Console.Write(outarray[i]+" ");
//        }
//    }

//}


//4. Function to find array is same

//public class SquareArray
//{
//    public static void Main()
//    {
//        int[] array = new int[10];
//        array[0] = 10;
//        array[1] = 2;
//        array[2] = 32;
//        array[3] = 43;
//        array[4] = 50;
//        array[5] = 10;
//        array[6] = 32;
//        array[7] = 43;
//        array[8] = 40;
//        array[9] = 110;


//        int[] outarray = new int[array.Length];
//        outarray[0] = 10;
//        array[1] = 2;
//        array[2] = 32;
//        array[3] = 43;
//        array[4] = 50;
//        array[5] = 10;
//        array[6] = 32;
//        array[7] = 43;
//        array[8] = 40;
//        array[9] = 110;

//        Boolean result = CheckValues(array,outarray);
//        if(result == true)
//        {
//            Console.WriteLine("Values of array matched");
//        }
//        else 
//        { 
//            Console.WriteLine("Values of array matched");
//        }
//    }

//    public static Boolean CheckValues(int[] array, int[] outarray)
//    {
//        Boolean check = true;
//        for(int i = 0; i < array.Length; i++)
//        {
//            if (array[i] != outarray[i])
//            {
//                return false;
//            }
//        }
//        return true;
//    }
//}