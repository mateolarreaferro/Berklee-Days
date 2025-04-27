## README.md

### Problem Set 4:

I/O + Functions + VariableScope

### Submitted by:
Mateo Larrea

### For Course:
EP-353

### Due Date:
02:00:00 PM on 10/06/2020

### Submission Date:
11:30:00 AM on 10/06/2020

### Files Included:
1. README.md
2. ProblemSet4.1.c
3. ProblemSet4.2.c
4. ProblemSet4.3.c
5. LoremIpsum.txt
6. lOREMiPSUM2.txt

### Purpose:
The purpose of this problem set was to understand how file i/o works (this includes opening, reading, writing, and closing files), how to create and use functions, and to understand variable scope in order to create global, local, and static variables. 

### Description:
**Problem Set 4.1** consisted in using fgetc to extract the chars in a LoremIpsum file to then create a new file that contains the same letters but in the opposite case using fputc. (If 'A' then 'a' and visceversa).
**Problem Set 4.2** consisted in using scanf to get an integer from the user and then create a function that adds all of the numbers from 1 to the integer inputed.
Finally, **Problem Set 4.3** consisted in creating global, local, and statics variables to be used in a function named increment.



### Build and Run Commands:
To build ProblemSet4.1, 4.2, and 4.3, use:

	 clang ProblemSet4.1.c -o ProblemSet4.1
	 clang ProblemSet4.2.c -o ProblemSet4.2
	 clang ProblemSet4.3.c -o ProblemSet4.3
	 

To run the compiled ProblemSet4.1, 4.2, and 4.3 programs, use: 

	 ./ProblemSet4.1
	 ./ProblemSet4.2
	 ./ProblemSet4.3

### Acknowledgement:
I used the information provided in class by my teacher, Akito van Troyer.