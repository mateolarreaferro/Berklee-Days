// Problem Set 5.2
#include <stdio.h>

//FuncPrototype
int countCharacter(char string[], int character);

//Function Declaration
int countCharacter(char string[], int character){

    //Static Variables
    static int charCount = 0;
    static int i = 0;

    while (string[i] != '\0')
    {
        if(string[i] == character)
            charCount++; 
            i++;
    }

    return charCount;

}

int main(){

    //Variables

    char name[30];
    char character = 0;
    int numOfChar = 0;
    int size = 0;


    // User Inputs String

    printf("Enter name: ");
    scanf("%s", name);

    //User Inputs Char

    printf("Enter a character: ");
    scanf("%s", &character);

    //Algorithm

    while(name[size] != '\0')
    {
        numOfChar = countCharacter(name,character);
        size++;
    }
    //Initial Part of Sentence
    printf("The string ");

    //Print String
        for (int i = 0; i < size; i++)
    {
            printf("%c", name[i]);
    }

    //Prints how many times the char repeats within the string
    printf(" has %d '%c's.\n", numOfChar, character);

    //Ends Main Func
    return 0;
}