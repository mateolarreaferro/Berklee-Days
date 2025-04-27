
// // Problem 8.2: File I/O with libsndfile 2
// // Write a program that reads sine.wav and tri.wav (included in the problem set folder).

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sndfile.h> 




int main() {


  //Pointers to a sound files
  SNDFILE *inFileSin = NULL,*inFileTri = NULL, *outFile = NULL; 
	
  //Stores info from the audio files
  SF_INFO sfInfoSin, sfInfoTri; 


  //Buffers that store the samples of the audio files
  float *bufferSin; 
  float *bufferTri;
  //BufferSize
  long kBufferSize = 4096; 
  

  //Initialize SF_INFO  to 0s 
  //Memory set 
    memset(&sfInfoSin, 0, sizeof(SF_INFO));
    memset(&sfInfoTri, 0, sizeof(SF_INFO));

  //Open the original sound files as read mode
  inFileSin = sf_open("sine.wav", SFM_READ, &sfInfoSin);
  inFileTri = sf_open("tri.wav", SFM_READ, &sfInfoTri);

  //Check if files can be opened

  if(!inFileSin){
    printf ("Error: could not open file : sine.wav\n");
		puts (sf_strerror (NULL));
		return 1;
  }
    if(!inFileTri){
    printf ("Error: could not open file : tri.wav\n");
		puts (sf_strerror (NULL));
		return 1;
  }
  
  //Allocates memory to both buffers using the bufferSize as a reference
  bufferSin = (float *) malloc(sfInfoSin.frames * sizeof(float));
  bufferTri = (float *) malloc(sfInfoTri.frames * sizeof(float));
  
  // Need to retain this info before opening another file
  kBufferSize = sfInfoSin.frames;

  //Open another sound file in write mode
  outFile = sf_open("sintri.wav", SFM_WRITE, &sfInfoSin);

  //Check if the file was opened
  if(!outFile){	
    printf ("Error*** Could not open file: sintri.wav");
		puts (sf_strerror(NULL));
		return 1;
	}

  //Copy the samples from the files to buffers
  sf_read_float(inFileSin, bufferSin, kBufferSize);
  sf_read_float(inFileTri, bufferTri, kBufferSize);

  //Writes the buffers 5 times in alternating order
  for (int i = 0; i < 5; i++){
  sf_write_float(outFile, bufferSin, kBufferSize); 
  sf_write_float(outFile, bufferTri, kBufferSize); 
  }

  //Close the open files
  sf_close(inFileSin);
  sf_close(inFileTri);
	sf_close(outFile);

  return 0;
}


