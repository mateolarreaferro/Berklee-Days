// Problem Set 6.2

#include <stdio.h>

//Function Prototype
void setArray(int *numbers, int value, int size);


int main()
{
	int size = 8, value, a;
	int numbers[8];
	

	// user input to initialize all elements in the array named numbers with the size of 8.
	printf("Enter an integer value to initialize all the elements of the numbers array: \n");

	//Stores value into value variable
	scanf("%d", &value);

	//Call setArray
	setArray(numbers, value,size);

	for (a = 0; a < size; a++){
		printf("index %d of numbers array is = %d\n",a, numbers[a]);
	}
	

	return 0;
}

//Function Declaration
void setArray(int *numbers, int value, int size){
	int i;
	//Initialize elements of the array to the value provided by user
	for (i = 0; i <size; i++){
		*numbers = value;
		numbers++;
	}

}

