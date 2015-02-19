using System;
using System.Linq;
using System.Text;
using System.IO;
using System.Collections.Generic;

class Program
{

    public static void Main(String[] args)
    {
        string Line = "";
        string[] words;
        System.IO.StreamReader File = new System.IO.StreamReader(args[0]);
        while ((Line = File.ReadLine()) != null)
        {
            words = Line.Split(' ');
            var BiggestWord = (from word in words
                               orderby word.Length descending
                               select word).FirstOrDefault();
            Console.WriteLine(BiggestWord.ToString());
        }
    }
}