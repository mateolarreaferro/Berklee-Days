## README.md

### Problem Set 9:

Audio File

### Submitted by:
Mateo Larrea

### For Course:
EP-353

### Due Date:
02:00:00 PM on 11/17/2020

### Submission Date:
1:50:00 AM on 11/17/2020

### Files Included:
1. README.md
2. ProblemSet9.1.c
3. ProblemSet9.2.c
4. noise.wav
5. pulse.wav



### Purpose:
The purpose of this problem set is to use trigonometric functions to computer different types of waves. Also, it is about using sndfile to continue exploring its functionality.
### Description:
**Problem Set 9.1** consisted in creating a one second long wave file that contains noise. In order to achieve this task the rand() function provided by stdlib library was required to generate an aperiodic sound. The process was the same as what we did in class when creating Sine, Square, and Sawtooth waves but with a slight change in the wave generator algorithm. **Problem Set 9.2** consisted in writing a 10% pulse wave that had a duration of 1 second. This problem required the use of a series of harmonics to compute the wave. The logic was essentially to use the same sine wave generator algorithm but playing with the amplitude of the harmonics (using the sequence provided by Akito). At the end it doesn't look like a 10% pulse wave for a strange reason (there is probably a very slight detail missing).

This assignment is one day late but now it all makes more sense...



### Build and Run Commands:


[Install Homebrew](https://www.datacamp.com/community/tutorials/homebrew-install-use)


To build ProblemSet9.1and 9.2  use:

	 clang ProblemSet9.1.c -lsndfile
	 clang ProblemSet9.2.c -lsndfile
	
	 

To run the compiled ProblemSet9.1 and 9.2 use: 

	 ./a.out
	

### Acknowledgement:
I used the information provided in class by my teacher, Akito van Troyer. Gabriel Ball helped me with the last problem.