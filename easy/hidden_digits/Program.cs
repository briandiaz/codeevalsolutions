using System;
using System.Text;
using System.IO;
using System.Collections.Generic;

class Program
{
    public static void Main(string[] args)
    {
        string Line;
        System.IO.StreamReader file = new System.IO.StreamReader(args[0]);
        Dictionary<char, int> HiddenDigits = new Dictionary<char, int>();
        char Letter = 'a';
        for (int i = 0; Letter <= 'j'; i++)
        {
            HiddenDigits.Add(Letter, i);
            Letter++;
        }
        int Value = 0;
        String Output = String.Empty;
        while ((Line = file.ReadLine()) != null)
        {
            foreach (char Digit in Line)
            {
                if (Int32.TryParse(Digit.ToString(), out Value))
                {
                    Output += Value.ToString();
                }
                if (HiddenDigits.ContainsKey(Digit))
                {
                    Output += HiddenDigits[Digit];
                }
            }
            Output = (Output.Length == 0) ? "NONE" : Output;
            Console.WriteLine(Output);
            Output = string.Empty;
        }
    }
}