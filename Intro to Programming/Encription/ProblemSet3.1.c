#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char* argv[]){
    // argc is the number of arguments given (argument count)
    // argv (argument vector)

    if (argc != 3){
        printf("There were not 3 arguments.\nExiting Program.\n");
        return 1; // kills the program
    }

    printf("plaintext: %s\n", argv[1]);

    char str[100];
    int key = atoi(argv[2]);
    
    for (int i = 0; i < strlen(argv[1]); i++){
        str[i] = argv[1][i] ^ key;
    }
    
    printf("ciphertext: %s\n", str);
    printf("decrypted: %s\n", argv[1]);

    return 0;
}