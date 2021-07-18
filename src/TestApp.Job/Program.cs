namespace TestApp.Job
{
    using System;
    using System.Threading;

    internal class Program
    {
        private static void Main(string[] args)
        {
            Console.WriteLine("Running migrations...");
            Thread.Sleep(30000);
            Console.WriteLine("Migrations complete!");
        }
    }
}
