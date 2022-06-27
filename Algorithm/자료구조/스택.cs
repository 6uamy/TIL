using System;
using System.Collections.Generic;
using System.Text;

namespace stack1{
  class Program{
  static void Main(string[] args)
  {
      int count = int.Parse(Console.ReadLine());
      List<string> stack = new List<string>();
      
      string[] input;
      StringBuilder a = new StringBuilder();
      
      for(int i=0; i<count; i++){
        a.Clear();
        input = Console.ReadLine().Split();

        switch (input[0])
        {
            case "push":
            stack.Add(input[1]);
            break;
            case "pop":
            a.Append(stack.Count == 0 ? "-1" : stack[stack.Count -1]);  
            Console.WriteLine(a);
            if(stack.Count != 0)
                stack.RemoveAt(stack.Count -1);
            break;
            case "size":
            a.Append(stack.Count);
            Console.WriteLine(a);
            break;
            case "empty":
            a.Append(stack.Count == 0 ? "1" : "0");
            Console.WriteLine(a);
            break;
            case "top":
            a.Append(stack.Count == 0 ? "-1" : stack[stack.Count -1]);  
            Console.WriteLine(a);
            break;
          }
        }
      }
    }
  }
