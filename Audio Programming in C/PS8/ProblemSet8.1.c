
// Problem 8.1: File I/O with libsndfile 1
// Write a program that reads sine.wav (included in the problem set folder) and extends the duration to 5 seconds.

//Required Libraries:
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <memory.h>
#include <sndfile.h>



// You must use libsndfile for this problem set.


//Number is arbitrary 
#define kBufferSize 4096


int main() 
{

    SNDFILE *inFile = NULL, *outFile = NULL; //pointers to a sound files (Initialized as NULL)
    SF_INFO sfInfo; //info about soundfile

    float buffer[kBufferSize]; //Buffer for holding samples (Array that holds floats with the size of kBufferSize)

    //Pointer
    float *arr = NULL;

    //Initialize SF_INFO with 0s (memset is in string.h library)
	memset(&sfInfo, 0, sizeof(SF_INFO));

    inFile = sf_open("sine.wav", SFM_READ, &sfInfo);
    if (!inFile)
    {
        printf ("Couldn't open sine.wav\n");
        return 1;
    }

	//Check if the file format is in good shape
  	if(!sf_format_check(&sfInfo)){	
    sf_close(inFile);
		printf("Invalid encoding\n");
		return 1;
	}
    
	// Write out the resulting 5 second sine wave to the sine5.wav file in the same directory.
    outFile = sf_open("sine5.wav", SFM_WRITE, &sfInfo);

	//Check for errors
    if (!outFile)
    {	
        printf ("Couldn't open sine5.wav");
        return 1;
    }

    int readcount;
    int sizeofArray = 0;
    
    while((readcount = sf_read_float(inFile, buffer, kBufferSize)) > 0) //Uses sf_read_float function
    {
        
        // printf("%d\n",readcount);
       
        arr = realloc(arr, (sizeofArray + readcount)*sizeof(float));
        
        for (int i = 0; i < readcount; i++){
            arr[sizeofArray+i] = buffer[i];

        }
        sizeofArray += readcount; 

    
        
    }

    //Makes it 5 times longer (writes it 5 times)
    for(int a = 0; a < 5; a++){

        sf_write_float(outFile, arr, sizeofArray);

    }


	//Close Files
    sf_close(inFile);
    sf_close(outFile);

    return 0;

}


