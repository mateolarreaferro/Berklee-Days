// Problem Set 3.2
#include <stdio.h>
#include <stdbool.h>


int main() {

    //Declaration of variables
    char note = 'G';
    int pitchClass;

    //Assigns note to pitchClass relationship
    switch(note){

    case 'C':
    pitchClass = 1;
    break;
    case 'D':
    pitchClass = 2;
    break;
    case 'E':
    pitchClass = 3;
    break;
    case 'F':
    pitchClass = 4;
    break;
    case 'G':
    pitchClass = 5;
    break;
    case 'A':
    pitchClass = 6;
    break;
    case 'B':
    pitchClass = 7;
    break;
    }

    // Output
    printf("A note '%c' translates to %i in pitch class.\n",note,pitchClass);
    
    return 0;

}
    



