using System;

class A{
  static void Main(){
    int N, P;
    string[] s = Console.ReadLine().Split();
    N = int.Parse(s[0]);
    P = int.Parse(s[1]);
    Console.WriteLine((N*P==P) ? "=" : "!=");
  }
}
