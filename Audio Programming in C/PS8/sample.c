//libsndfile Features
//Open Source
//Ability to read and write files



#include <stdio.h>
#include <stdlib.h>
#include <memory.h> //memset
#include <sndfile.h>

const int bufferSize= 4096; //Arbitrary


int main(){

    //These two go together: SNDFILE & SF_INFO
    SNDFILE *sndFile;
    SF_INFO sfInfo;

    //Write***
    SNDFILE *outFile;


    //This is where we are going to store the data of the audio file
    float buffer[bufferSize];



    //Read sound file (But before clear the memory of sfInfo)
    memset(&sfInfo, 0, sizeof(SF_INFO)); //Free sfInfo and use 0

    //Open
    sndFile = sf_open("sine.wav", SFM_READ, &sfInfo); //File name, mode, &sfInfo (contains the content = sample rate,....)

   
    //Check if it was able to open
    if(!sndFile) return 1;


    //Print data

    printf("Sample Rate is: %d\n", sfInfo.samplerate);
    printf("Channels: %d\n", sfInfo.channels);
    printf("Number of Frames: %lld\n", sfInfo.frames);
    printf("Time is: %2.2f\n", (double) sfInfo.frames/sfInfo.samplerate);


    //Open up new file | Change File Type
    sfInfo.format = SF_FORMAT_AIFF | SF_FORMAT_PCM_16;
    outFile = sf_open("copiedSine.aiff", SFM_WRITE, &sfInfo);



    int readCount = 0;

    while((readCount = sf_read_float(sndFile, buffer, bufferSize)) > 0) {
        printf("%d\n", readCount);
        sf_write_float(outFile, buffer, readCount);
    }



    //Close file
    sf_close(sndFile);
    sf_close(outFile);





    return 0;
}


