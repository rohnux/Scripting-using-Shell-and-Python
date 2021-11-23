f=open("a.log","r")
lines=f.read()
#print(lines)
count=0
for char in lines:
    if ( char.isupper() ):
         print(char)
         count+=1
print(count)
