## README.md

### Problem Set 8:

Audio File

### Submitted by:
Mateo Larrea

### For Course:
EP-353

### Due Date:
02:00:00 PM on 11/03/2020

### Submission Date:
1:50:00 AM on 11/03/2020

### Files Included:
1. README.md
2. ProblemSet8.1.c
3. ProblemSet8.2.c
4. ProblemSet8.3.c
5. sine.wav
6. SN.wav
7. tri.wav
8. sine5.wav 
9. sintri.wav
10. ReverseSN.wav



### Purpose:
The purpose of this problem set is to experiment with audio files in C. It is focused on using libsndfile to modify certain parameters of the file.
### Description:
**Problem Set 8.1** consisted in using the sine.wav file provided in the folder to create a new one that had a duration of 5 seconds instead of 1. **Problem Set 8.2** consisted in opening sine.wav and tri.wav to create a new file names sintri.wav that mixes both of those files 5 times. Finally, **Problem Set 8.3** consisted in reversing sine.wav into a new file named ReverseSN.wav




### Build and Run Commands:


[Install Homebrew](https://www.datacamp.com/community/tutorials/homebrew-install-use)


To build ProblemSet8.1, 8.2, and 8.3, use:

	 clang ProblemSet8.1.c -lsndfile
	 clang ProblemSet8.2.c -lsndfile
	 clang ProblemSet8.3.c -lsndfile
	 

To run the compiled ProblemSet8.1, 8.2, and 8.3 programs, use: 

	 ./a.out
	

### Acknowledgement:
I used the information provided in class by my teacher, Akito van Troyer. Also, Pedro helped me with PS8.2.