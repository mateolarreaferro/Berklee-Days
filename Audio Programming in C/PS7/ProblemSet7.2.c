// Problem Set 7.2: Memory Management and Functions

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

	// Write a function named copyString that takes in string.

	//Function Prototype
	char *copyString(char *string);


	//Function Defintion
	char *copyString(char *string){

	printf("Please enter the string to be copied:  \n");

	 scanf("%s", string);

	return string;
}




	int main(){
		
	// Ask the user to input a string in the main function to pass into the copyString function.

	char * input = malloc(50 * sizeof(char));

	copyString(input);

	// Print out the returned value from the copyString function to verify that the copying was successful.

	printf("The copy is: %s\n", input);


	free(input);
	return 0;

	}






