//How to determine the minimum number of an array
#include <stdio.h>
//Function prototype
int minimum(int nums[], int size);

//Function Declaration
int minimum(int nums[], int size){
    //You need to create a number that is bigger than all of the numbers in the array
    int i, min = 100000; //It is arbitrary
    
    //For loop to itinerate over the elements of array
    for (i = 0; i < size; i++){
        if (min > nums[i]){
            //If there is a smaller number (of course there is) the min variable transforms into that number
            min = nums[i];
        }
    }
    return min; //gives the min number
}

int main(){
// nums array    
int nums[11] = {10,120,13234,3892,138,34,234 ,3,3636,75, 2};
//Size of the array
int size = 11;

int min = minimum(nums, size);


printf("The minimum number of the array is %d\n", min);
return 0;


}