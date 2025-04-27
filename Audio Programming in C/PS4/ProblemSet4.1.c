// Problem Set 4.1
#include <stdio.h>
#include <math.h>
#include <stdbool.h>

int main (){ 
    
    //Declaration of variables
    FILE *f1;
    FILE *f2;
    int c;

    //Opens f1 and creates f2 file
    f1 = fopen("LoremIpsum.txt", "r");
    f2 = fopen("lOREMiPSUM2.txt", "w");

    //Confirmation of existence
    if (f1 == NULL || f2 == NULL){
        printf("Couln't find text file\n");
        return 1;
    }

    //Read and Write (Algorithm)
    while(( c = fgetc(f1)) != EOF){
        
        //Upper case to lower case
        if (c >= 'A' && c <= 'Z'){
        c = c - 'A' + 'a';
        
    }   
        //Lower case to upper case
         else if ((c >= 'a' && c <= 'z')) {

        c = c - 'a' + 'A';
        
    }
        //Takes into account spaces between words (for readability)
        //Please comment this else if statement if spacing is not required
        else if (c == 32) {
        c = ' ';

        
    }   
        fputc(c,f2);
    
    }

    //Closes f1 & f2 (Courtesy)
    fclose (f1);
    fclose (f2);
        

    //Finishes main function
    return 0;
}