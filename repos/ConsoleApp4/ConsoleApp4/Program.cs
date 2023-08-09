//using System.Collections;
//public class Program
//{
//    public static void Main()
//    {
//        ArrayList arrayList = new ArrayList();
//        arrayList.Add(1);
//        arrayList.Add("Two");
//        arrayList.Add(3);
//        arrayList.Add(45.3);

//        ArrayList arrayList1 = new ArrayList();
//        arrayList1.Add(100);
//        arrayList1.Add(200);

//        // Adding new array list to existing list
//        arrayList.AddRange(arrayList1);

//        int firstElement = (int)arrayList[0];
//        string secondElement = (string)arrayList[1];
//        int thirdElement = (int)arrayList[2];
//        double fourthElement = (double)arrayList[3];

//        foreach (var item in arrayList)
//        {
//            Console.WriteLine(item);   
//        }
//    }
//}

//List

public class Program
{
    public static void Main()
    {
        List<int> list = new List<int>();
        list.Add(10);
        list.Add(20);
        list.Add(30);
        list.Add(40);


        //forward only

        foreach (var item in list)
        {
            Console.WriteLine(item);
        }

    }
}