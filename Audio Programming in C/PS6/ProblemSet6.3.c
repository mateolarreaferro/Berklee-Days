//Problem Set 6.3

//Thanks to my classmate Pedro Sodre that showed how to get this one done
#include <stdio.h>
#include <string.h>

int main(){

char string1[20];

char string2[20];

int lenght = 0;
char *begin;
char *end;
char ch = 0; 

	printf("Enter a string: \n");

    scanf("%s", string1);

    //length of string 
    lenght = strlen(string1); 
  
    // begin' and 'end' to the beggining of the string
    begin = string1; 
    end = string1 + lenght -1; 
  
    // // Move the end to the last element of the string
    // for (int i = 0; i < lenght - 1; i++) {
    //     end++; 
    // }

    // Swap the last and first index using begin and end 
    for (int i = 0; i < lenght / 2; i++) { 
  
     // swap character 
        string2[i] = *end; 
        *end = *begin; 
        *begin = string2[i]; 

    // move pointers in opposite directions
        begin++; 
        end--; 
    }

    for (int i = 0; i < lenght; i++)
    {
        printf("%c %c\n" , string1[i],string2[i]);
    }
    
    return 0;

}