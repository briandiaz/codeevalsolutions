using System;
using System.Collections.Generic;
using System.IO;

class Program
{
    static void Main(string[] args)
    { 
        string Line;
        System.IO.StreamReader file = new System.IO.StreamReader(args[0]);
        Point P1;
        Point P2;
        String[] PLine;
        while ((Line = file.ReadLine()) != null)
        {
            PLine = Line.Split(')');
            P1 = new Point(PLine[0]);
            P2 = new Point(PLine[1]);
            Console.WriteLine(P1.CalculateDistance(P2));
        }
    }
}
class Point
{
    public int X { get; set; }
    public int Y { get; set; }

    public Point(int x, int y)
    {
        this.X = x;
        this.Y = y;
    }

    public Point(string Line)
    {
        int[] Points = GetPointsFromString(Line);
        this.X = Points[0];
        this.Y = Points[1];
    }

    public static int[] GetPointsFromString(String Line)
    {
        Line = Line.Replace("(", "");
        String[] PointsLine = Line.Split(',');
        int[] Points = new int[2];
        Points[0] = Convert.ToInt32(PointsLine[0].Replace(" ", ""));
        Points[1] = Convert.ToInt32(PointsLine[1].Replace(" ", ""));
        return Points; 
    }

    public int CalculateDistance(Point Point2)
    {
        return (int)Math.Sqrt(Math.Pow((Point2.X - this.X),2) + Math.Pow((Point2.Y - this.Y),2));
    }
}