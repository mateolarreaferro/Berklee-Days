
//Problem 8.3 - File I/O with libsndfile 3
// Write a program that reads SN.wav (included in the problem set folder) and reverse the sample.

//Required Libraries:
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <memory.h>
#include <sndfile.h>


int main(){

    //Pointers to sound files
    SNDFILE *inFile = NULL, *outFile = NULL;

    //Holds File Info
	SF_INFO sfInfo; 

    //Buffers that store the samples of the audio files
    float *buffer; 
    float *reffub; 

    //Buffer Size
    long kBufferSize = 4096; 

    //Initialize SF_INFO to 0
    memset(&sfInfo, 0, sizeof(SF_INFO));

    //Open the sound file as read mode
    inFile = sf_open("SN.wav", SFM_READ, &sfInfo);
    
    //Checks if File can be opened
    if(!inFile){
    printf ("Error*** Could not open file: SN.wav\n");
		puts (sf_strerror (NULL));
		return 1;
  }
  
  //Allocates memory to both buffers using the bufferSize as a reference
  buffer = (float *) malloc(sfInfo.frames * sizeof(float));
  //Opens up memory to fill the second buffer with the equivalent memory of BufferSize
  reffub = (float *) malloc(sfInfo.frames * sizeof(float));
 
    //Retain this info before opening another file
  kBufferSize = sfInfo.frames;


  //Open outfile in W mode
  outFile = sf_open("ReversedSN.wav", SFM_WRITE, &sfInfo);

  //Check if the file opened
  if(!outFile){	
    printf ("Error*** Could not open file: ReversedSN.wav");
		puts (sf_strerror(NULL));
		return 1;
	}




    //Copy samples from the original file to the buffer
    sf_read_float(inFile, buffer, kBufferSize);

    //Reverses the order of buffer to reffub
    for (int a = 0; a < kBufferSize ; a++)
    {
      reffub[a] = buffer[kBufferSize - a];
    }

    //reffub into new file
    sf_write_float(outFile, reffub, kBufferSize); 

  
    //Close Files
    sf_close(inFile);
    sf_close(outFile);

  return 0;
}