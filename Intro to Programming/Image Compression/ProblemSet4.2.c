#include <stdio.h>

char pixels[200];
char compressed[200];

int read(void);
int  write(void);
void decode(void);

int main(){
  if(read() == 1) return 1;
  decode();
  if(write() == 1) return 1;

  return 0;
}

int read(void){
  FILE *readFile;
  readFile = fopen("compressed.txt", "r");

  if(readFile == NULL){
    printf("File cannot be opened or does not exist.\n");
    return 1; //Return error
  }

  // Copy the content of file to array
  int count = 0;
  char c;
  while((c = fgetc(readFile)) != EOF){
    compressed[count++] = c;
  }

  compressed[count] = '\0';

  //Close opened file
  if(readFile) fclose(readFile);
  return 0;
}

int write(void){
  FILE *writeFile;
  writeFile = fopen("pixelsDecompressed.txt", "w");

  if(writeFile == NULL){
    printf("File cannot be opened or does not exist.\n");
    return 1; //Return error
  }

  char c;
  int i = 0;
  while((c = pixels[i++]) != '\0'){
    fputc(c, writeFile);
  }

  if(writeFile) fclose(writeFile);
  return 0;
}

void decode(void){
  int counter = 0;
  char previous = compressed[0];
  int index = 0;

  for (int i = 0; compressed[i] != '\0'; i++){ 

    if (compressed[i] == '\n'){
     
      previous = compressed[i-1];
    }

    else{ 
      if (compressed[i] != previous){ 
        compressed[index] = counter + 48; 
        counter = 0;
        index++;
      }

      counter++; // iterate the counter
      previous = compressed[i]; 
    }

    if (compressed[i + 1] == '\0'){ 
      pixels[index] = counter + 48;
    }
  }
}
