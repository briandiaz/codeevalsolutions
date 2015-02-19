using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRW
{
    class Program
    {
        static void Main(string[] args)
        {
            //string File = Console.ReadLine();
            string Line;
            System.IO.StreamReader file =
               new System.IO.StreamReader(args[0]);
            while ((Line = file.ReadLine()) != null)
            {
                string[] Words = Line.Split(' ');
                if (Words.Length != 0)
                {
                    for (int i = Words.Length - 1; i >= 0; i--)
                        Console.Write(Words[i] + " ");
                    Console.WriteLine();
                }
            }
        }
    }
}