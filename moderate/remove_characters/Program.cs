using System;
using System.IO;
using System.Collections.Generic;

class Program
{

    public static void Main(String[] args)
    {
        String Line = "";
        System.IO.StreamReader File = new System.IO.StreamReader(args[0]);
        String[] Words;
        String MyWord, OriginalWord;
        while ((Line = File.ReadLine()) != null)
        {
            Words = Line.Split(',');
            MyWord = Words[0];
            OriginalWord = Words[1].Replace(" ", "");
            foreach (char Char in OriginalWord)
            {
                MyWord = MyWord.Replace(Char.ToString(), "");
            }
            Console.WriteLine(MyWord);
        }
    }
}