

using System;
class tell {
 static void Main() {
       Random nu = new Random();
       Random nu1 = new Random();
     for (int i = 0; i < 1000; i++){
   
    
     int val  =  nu.Next(9,9999999);
     int val1 = nu1.Next(0,9876541);
    //Console.WriteLine("(58)99"+val);
    
    if(val1<1000000 )val1 = nu1.Next(0,9999999) ;
    Console.WriteLine("(68)98"+val1   );
    
  }
      
  }
}
