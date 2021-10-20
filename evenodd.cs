/* This Program is taking numbers from user and then it dividing the 
numbers to odd and even.
even numbers are displaying in ascending order and odd in descending order.
By: Shamsulhaq Haqyar.
Date: 27/07/2017
Where: International house, Pravesh Bhawan, Allahabad, India.
*/
using System;
using System.Collections;
class evenodd
{
	public static void Main(string[] args)
	{
		Console.WriteLine("How many integers you want to categorize? ");
		int count=int.Parse(Console.ReadLine());
		Console.WriteLine("Input "+count+ " numbers: ");
        int[] number = new int[count];
        for (int i = 0; i < number.Length; i++) {
            number[i] = int.Parse(Console.ReadLine());

            if (number[i] == 0) {
                Console.WriteLine("input of 0 is not alllowed!");
                break;
            }
        }
        //EVEN NUMBERS
		int even=0;
		Console.WriteLine("List of even numbers:"); 
        for (int i = 0; i < number.Length; i++) 
		{
            if (number[i] % 2 == 0)
			{
				even++;
				Array.Sort(number);
				Console.Write("{0} ", number[i]);
			}
        }
		Console.WriteLine("\n You entered total "+even+" Even numbers.");
		Console.WriteLine("\n********************");
        //ODD NUMBERS
		int odd=0;
        for (int i = 0; i < number.Length; i++)
		{
            if (number[i] % 2 != 0) 
			{
				odd++;
				Array.Reverse(number);
                Console.Write("{0} ", number[i]);
            }
        }
		Console.WriteLine("\n You had Entered total "+odd+" odd numbers.");
		Console.ReadLine();
	}
}
