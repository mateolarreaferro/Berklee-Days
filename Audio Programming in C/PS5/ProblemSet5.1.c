// Problem Set 5.1


//FINAL SOLUTION (I used an article from Techie Delight to get this one done
#include <stdio.h>


// Declaration of Function to Print the Reversed Array
void printReversedArray(int numbers[], int size)
{
	for (int i = 0; i < size; i++) {
		printf("The value of arr at index %d is %d\n", i,numbers[i]);
	}
}

// Declaration of Function to reverse elements
void reverse(int numbers[], int i, int size)
{
	// base case: end of array is reached or array index out-of-bounds
	if (i >= size)
		return;

	// store next element of the array
	int value = numbers[i];

	// reach end of the array using recursion
	reverse(numbers, i + 1, size);

	// put elements in the call stack back into the array
	// in correct order
	numbers[size - i - 1] = value;
}

int main(void)
{
	int numbers[] = {5, 9, 1, 2, 4, 8, 3};
	int size = sizeof(numbers)/sizeof(numbers[0]);

	reverse(numbers, 0, size);
	printReversedArray(numbers, size);

	return 0;
}


//Alternative Solution
// #include <stdio.h>

// int main(){ 
    
//     //Declaration of variables
//     int numbers [7] = {5, 9, 1, 2, 4, 8, 3};
//     int length = 6; //0-6
//     int i, j = 0;

//         for (i = 0; i <= length; i++){

//     //     //The last element is assigned to the first
//             numbers[i] = numbers[length-i];
//             printf("The arr in index %d is %d\n",i,numbers[i]);
//         }
        	
     
        

//     //Finishes main function
//     return 0;
// }

// // OUTPUTS: 3, 8, 4, 2, [4(-3), 8(+1), 3(+2)] Everything inside the[] is an error
