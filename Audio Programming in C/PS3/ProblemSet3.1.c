//Problem Set 3.1 
#include <stdio.h>
#include <stdbool.h>
#include <math.h>

int main () {

    // Declaration of variables
    char loudness = ('F')* -1; // ASCII 'F' = 70
    float loudnessValue = (float) loudness;

    float amp = pow(10, loudnessValue/20);

    // Formula: amplitude = 10^(db/20)


    //Output
    printf("The Loudness of %2.0fdB is %1.7f\n",loudnessValue,amp);
        
    // Ends main()
    return 0;

}