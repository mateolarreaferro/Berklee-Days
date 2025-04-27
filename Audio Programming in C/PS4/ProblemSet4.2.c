// Problem Set 4.2
#include <stdio.h>
#include <stdbool.h>
#include <math.h>

//Declaration of Variables
int number,i,total = 0;  
//Function prototype 
int sumup(int number);

//Definition of Function
 int sumup(number) {
    for (i = 1; i <= number; i++)
    total = total + i;
    return total; 
    }
   
int main() {
    
    printf ("Enter a positive integer: \n");
    //User's input =  int number
    scanf("%d", &number);
    //Calls sumup function and returns value of total
    total = sumup(number);

    printf("If you add all of the number from 1 to %d, the result is: %d\n", number, total);

    //Ends main function
    return 0;
}

    



