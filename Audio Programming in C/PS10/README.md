## README.md

### Problem Set 10:

Digital Audio Effects

### Submitted by:
Mateo Larrea

### For Course:
EP-353

### Due Date:
02:00:00 PM on 11/24/2020

### Submission Date:
4:00:00 AM on 12/02/2020

I asked for an extension due to a health issue

### Files Included:
1. README.md
2. ProblemSet10.1.c
3. ProblemSet10.2.c
4. ProblemSet10.3.c




### Purpose:
The purpose of this problem set is to learn how audio effects such as delay, reverb, distortion, flanger, and many others work and are implemented using C language. For all of the problems we used a template that contains all the sndfile functions in order to open and create a new file with the result.
### Description:
**Problem Set 10.1** consisted in creating an effect that mixes a flanger and a fuzz. In order to implement this effect, I added the specific parameters of each into the for loop that iterates over the sample rate. All of this information goes into the outBuffer. **Problem Set 10.2** consisted in creating a delay effect using the algorithm provided on Github. My code isn't fully implemented, the algorithm is copied into the process function but there is an error on line 79. I'll review this problem in the next few days.
Finally, **Problem Set 10.3** consisted on creating a Bass booster. This included defining the saturate function using fmin and fmax form the math.h library. Additionally, I also created a booster function to implement the algorithm provided and then called it in the process function. However, I'm not getting sound. 


### Build and Run Commands:


[Install Homebrew](https://www.datacamp.com/community/tutorials/homebrew-install-use)


To build ProblemSet10.1, .2, and .3  use:

	 clang ProblemSet10.1.c -lsndfile
	 clang ProblemSet10.2.c -lsndfile
	 clang ProblemSet10.3.c -lsndfile
	
	 

To run the compiled ProblemSet10.1, 10.2, and 10.3 use: 

	 ./a.out
	

### Acknowledgement:
I used the information provided in class by my teacher, Akito van Troyer. 