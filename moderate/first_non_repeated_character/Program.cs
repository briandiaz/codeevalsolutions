using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

class Program
{
    
    static void Main(string[] args)
    { 
        string Line;
        System.IO.StreamReader file = new System.IO.StreamReader(args[0]);
        while ((Line = file.ReadLine()) != null)
        {
            var FirstNonRepeatedCharacter = Line.ToCharArray().GroupBy(ch => ch).Where(cou => cou.Count() == 1).Select(cou => cou.First() ).First();
            Console.WriteLine(FirstNonRepeatedCharacter.ToString());
        }
    }
}