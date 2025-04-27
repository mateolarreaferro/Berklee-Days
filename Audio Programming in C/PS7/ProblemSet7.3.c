// Problem Set 7.3: Advanced Data Type

#include <stdio.h>
#include <stdlib.h> //Essential for Memory Allocation
#include <stdbool.h>

//struct named Note that holds three unsigned char variables pitch, velocity, and channel.

struct Note
{
	unsigned char pitch;
	unsigned char velocity;
	unsigned char channel;
};

//Typedef
typedef struct Note Note;


//Function called printNote that can take the Note pointer variable.

//Function Protoype:

void printNote(Note *values);

//Function Declaration:

void printNote(Note *values){

	printf("The MIDI Note has: \n");
	printf("Pitch -> %d\n", values->pitch);
	printf("Velocity -> %d\n", values->velocity);
	printf("Channel -> %d\n", values->channel);
}



int main(){

	// Declare the Note struct as a pointer type and allocate memory space for it using malloc.
	Note *values = malloc(sizeof(Note)*1);

	//Verify if malloc worked
	if(values == NULL){
		printf("Malloc wasn't triumphant!!!\n");
		return 1;
	}

	



	// Ask the user to input the values for the pitch, velocity, and channel members of the Note struct.
	
	//PITCH
	printf("Please enter a Pitch value:   \n");
	scanf("%hhu", &values->pitch);

	//VELOCITY
	printf("Please enter a Velocity value:   \n");
	scanf("%hhu", &values->velocity);

	//CHANNEL
	printf("Please enter a Channel value:   \n");
	scanf("%hhu", &values->channel);

	//Call Function 

	printNote(values);
	


	//free the Note struct before the program exists.
	free(values);
	
	
	//End of Main Function
	return 0;
  }



