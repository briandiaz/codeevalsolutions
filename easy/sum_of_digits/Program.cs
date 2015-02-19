using System;
using System.IO;
using System.Text;
using System.Collections.Generic;

class Program
{
    
    static void Main(string[] args)
    {
        string Line;
        System.IO.StreamReader file =
           new System.IO.StreamReader(args[0]);
        int SumOfDigits = 0;
        while ((Line = file.ReadLine()) != null)
        {
            foreach (char Number in Line)
            {
                SumOfDigits += Convert.ToInt32(Number.ToString());
            }
            Console.WriteLine(SumOfDigits);
            SumOfDigits = 0;
        }
    }
}