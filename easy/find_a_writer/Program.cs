using System;
using System.Text;
using System.IO;
using System.Collections.Generic;

class Program
{

    public static void Main(string[] args)
    {
        string Line = "";
        string[] Encoded;
        string NameEncoded;
        string[] Keys;
        String WriterName;
        System.IO.StreamReader file = new System.IO.StreamReader(args[0]);
        while ((Line = file.ReadLine()) != null)
        {
            Encoded = Line.Split('|');
            NameEncoded = Encoded[0];
            Keys = Encoded[1].Split(' ');
            WriterName = String.Empty;

            foreach (string Position in Keys)
                if (!Position.Equals(""))
                    WriterName += NameEncoded[Convert.ToInt32(Position) - 1];

            Console.WriteLine(WriterName);
            WriterName = String.Empty;
        }
    }
}