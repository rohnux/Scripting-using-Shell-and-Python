f=open("a.log","r")
lines=f.read().split(' ')
#print(lines)
count=0
for a in lines:
    if ( a[-1] == "h" ):
         print(a)
         count+=1
print(count)

