// Problem Set 7.1: Memory Management

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>


int main(){

	// The size of the array must always be the same as the number of long integers entered by the users.
	long int *arr = malloc(sizeof(long int) * 100);



	int size = 0; //Amount of numbers inputed by user(The size of the array must always be the same as the number of long integers entered by the user)
	long int inputs;
	int maxArrayLength = 100;

	//Variables to Average
	int sumofElements;
	


	// Write a program that takes an arbitrary number of long integers from users using scanf and while-loop.

	printf("Enter numbers that will be averaged: \n");


	while(1) // The while-loop should exit if the users enter 0 or the array becomes larger than 100.
	{
	
	// Store all long integers entered by the users in an array while the while-loop is running.
	scanf("%li", &inputs);
	size += 1;
	arr[size] = inputs;
	

	if (inputs == 0 || size > maxArrayLength){

		break; //maybe something else (Akito, is there a better option?)
		}
	}

	

	arr = realloc(arr, size * sizeof(long int));


	// Compute the average of all long integers entered by the user when they exit the number entering routine.

	for (int i = 0; i < size; i++){

	sumofElements += arr[i];

	}
	
	
	size = size - 1; //This ignores the 0 or the 100th number
	float average = (float)sumofElements / size;

	
	// Print out the result of averaging.
	printf("The average of all of the numbers entered in the array is %3.2f\n",average);

	//Free Space of arr
	free(arr);


	return 0;
}



