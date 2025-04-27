//Probelm Set 4.3
#include <stdio.h>
#include <math.h>
#include <stdbool.h>

//Global Variable
int global = 0;

//Function Prototype
void increment();

//Function Declaration
void increment(){
    //Static Variable
    int static sint = 0;
    //Local Variable
    int local = 0;

    //Correct way of format (no white space)
    printf("%d|\t%d|\t%d\n",local, sint, global);

    //Makes output look like the github output (using visual studio code terminal)
    //printf("  %d  |\t%d  |\t%d\n",local, sint, global);

    local += 1;
    sint += 1;
    global += 1;
}


int main (){
    int i;

    //Format of the header
    printf("local| sint| global\n"
    "---------------------\n");

    //Calls increment 10 times
    for (i = 0; i <= 9; i++){
        increment();

    }
    //Ends main function
    return 0;
}