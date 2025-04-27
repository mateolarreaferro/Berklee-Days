#include <stdio.h>

char pixels[200]; // Store the pixel information from "pixels.txt"
char compressed[200]; // Store the compressed pixel information

int read(void);
int  write(void);
void encode(void);

int main(){
  if(read() == 1) return 1;
  encode();
  if(write() == 1) return 1;

  return 0;
}

int read(void){
  FILE *readFile;
  readFile = fopen("pixels.txt", "r");

  if(readFile == NULL){
    printf("File cannot be opened or does not exist.\n");
    return 1; //Return error
  }

  // Copy the content of file to array
  int count = 0;
  char c;
  while((c = fgetc(readFile)) != EOF){
    pixels[count++] = c;
  }

  pixels[count] = '\0';

  //Close opened file
  if(readFile) fclose(readFile);
  return 0;
}

int write(void){
  FILE *writeFile;
  writeFile = fopen("compressed.txt", "w");

  if(writeFile == NULL){
    printf("File cannot be opened or does not exist.\n");
    return 1; //Return error
  }

  char c;
  int i = 0;
  while((c = compressed[i++]) != '\0'){
    fputc(c, writeFile);
  }

  if(writeFile) fclose(writeFile);
  return 0;
}

void encode(void){
    int counter = 0;
  char previous = pixels[0];
  int index = 0;

  for (int i = 0; pixels[i] != '\0'; i++){ // loops through pixels

    if (pixels[i] == '\n'){
      // skip the counter   
      // previous needs to be pixels[i-1]
      previous = pixels[i-1];
    }

    else{ // triggers if the current pixel is not \n
      if (pixels[i] != previous){ // if we switch between 0 and 1 or 1 and 0
        compressed[index] = counter + 48; // converts to ascii  
        counter = 0;
        index++;
      }

      counter++; // iterate the counter
      previous = pixels[i]; 
    }

    if (pixels[i + 1] == '\0'){ // we're about to reach the end. 
      compressed[index] = counter + 48;
    }
  }
}
