#creation of variables
pt = input('Enter the text you want to encrypt: ')
k = int (input('Enter a value for your key(integer): '))
et = '' 


#running the loop (algorithm)
for char in pt: 
    a = ord(char) - 97
    a += k 
    et += chr(a + 97)
    a = a % 26



#printing results
print('Encrypted:', (et))
print ('Decrypted:', (pt))
