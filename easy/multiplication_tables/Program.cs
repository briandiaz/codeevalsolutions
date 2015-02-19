using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        for (int i = 1; i < 13; i++)
        {
            for (int j = 1; j < 13; j++)
            {
                if(j == 1)
                    Console.Write(String.Format("{0,3}", (i * j).ToString()));
                else
                    Console.Write(String.Format("{0,4}", (i * j).ToString()));
            }
            Console.WriteLine();
        }
    }
}