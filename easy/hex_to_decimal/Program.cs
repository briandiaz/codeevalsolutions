using System;
using System.Text;
using System.IO;
using System.Collections.Generic;

class Program
{
    public static void Main(string[] args)
    {
        string Line = "";
        System.IO.StreamReader file = new System.IO.StreamReader(args[0]);
        while ((Line = file.ReadLine()) != null)
        {
            Console.WriteLine(Convert.ToInt32(Line, 16));
        }
    }
}