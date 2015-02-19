using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

class Program
{
    static void Main(string[] args)
    {
        string Line;
        System.IO.StreamReader file = new System.IO.StreamReader(args[0]);
        while ((Line = file.ReadLine()) != null)
        {
            Regex emailRegex = new Regex(@"^[\w!#$%&'*+\-/=?\^_`{|}~]+(\.[\w!#$%&'*+\-/=?\^_`{|}~]+)*"
+ "@"
+ @"((([\-\w]+\.)+[a-zA-Z]{2,4})|(([0-9]{1,3}\.){3}[0-9]{1,3}))$");
            Match emailMatch = emailRegex.Match(Line);
            if (emailMatch.Success)
                Console.WriteLine("true");
            else
                Console.WriteLine("false");
        }
    }
}