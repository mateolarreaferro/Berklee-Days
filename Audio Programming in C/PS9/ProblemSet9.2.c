// ProblemSet9.2.c.


// Following number sequence is the approximated first 32nd harmonics of 10% Pulse Wave:
// [{1.00, 0.95, 0.87, 0.77, 0.65, 0.51, 0.37, 0.23, 0.11, 0.00, 0.09, 0.16, 0.20, 0.22, 0.21, 0.19, 0.15, 0.10, 0.05, 0.00, 0.04, 0.08, 0.11, 0.13, 0.13, 0.11, 0.09, 0.06, 0.03, 0.00, 0.03, 0.06}]



#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <memory.h>
#include <sndfile.h>


//Define constant paramenters

#define kSampleRate 44100
#define kSec 1 // Write a program that generates 1 second long 10% Pulse Wave
#define kNumFrames kSampleRate * kSec //Frames = samplerate * time
#define kNumChannels 2
#define kFormat (SF_FORMAT_WAV| SF_FORMAT_PCM_24)
#define kFileName "pulse.wav"  //Save the result in the wave file named pulse.wav.
#define kNumHarmonics 32 // Following number sequence is the approximated first 32nd harmonics of 10% Pulse Wave:


//Main Func starts

int main(){


//Variables 

SNDFILE *myfile; //File
SF_INFO fileInfo; //Information of the File
double *buffer; //Where to store


//Parameters of the Sine Wave

double amplitude[]= {1.00, 0.95, 0.87, 0.77, 0.65, 0.51, 0.37, 0.23, 0.11, 0.00, 0.09, 0.16, 0.20, 0.22, 0.21, 0.19, 0.15, 0.10, 0.05, 0.00, 0.04, 0.08, 0.11, 0.13, 0.13, 0.11, 0.09, 0.06, 0.03, 0.00, 0.03, 0.06}; //in dB
double frequency = 440.0; //in Hz
//Computer doesn't read seconds --> Frequency needs to be transformed
frequency = frequency / kSampleRate;

//Allocate using calloc

buffer = calloc(kNumFrames * kNumChannels, sizeof(double)); //Frames represent length of the file

//Check
if (!buffer){
    printf("Error\n");
    return 1;
}


//Memset to set all of the memory space to 0


memset(&fileInfo, 0, sizeof(SF_INFO));


//setting Properties of the Audio File
//Assigns

fileInfo.samplerate = kSampleRate;
fileInfo.frames = kNumFrames; 
fileInfo.channels = kNumChannels;
fileInfo.format = kFormat;


//Time to open the file!

myfile = sf_open (kFileName, SFM_WRITE, &fileInfo);

//Check
if (!myfile){
    printf("Error!\n");
    return 1;
}

//Time to Write!

//Sine Wave --> A*Sin(2*M_PI*F*t)


for (int t = 0; t < kNumFrames; t++){ //t is current time

    for (int h = 1; h < kNumHarmonics; h++)
    if (frequency * h < kSampleRate / 2){ //// Reject the harmonics whose frequency exceeds Nyquist frequency when generating the waveform
    double sample = amplitude[h-1] * sin(2 * M_PI * (frequency * h) * t);

    //Put each harmonic into the buffer
      for (int a = 0; a <kNumChannels; a++){
        buffer [kNumChannels * t + a] += sample; //Add all of it and initialize buffer to 0 with calloc || t allows us to access each indivual channel
    }
    }

}



//Finally --> Write Sine Wave into Audio File

sf_count_t count = sf_write_double(myfile, buffer, kNumFrames * kNumChannels);

if (count != kNumChannels * kNumFrames){
    printf("Error!\n");
    
}


//Close
sf_close(myfile);
free(buffer);











return 0;
}