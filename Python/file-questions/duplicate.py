line=str(input())
list=line.split(' ')
s=[]
for word in list:
     if list.count(word) >= 1 and (word not in s) :
            s.append(word)
print(' '.join(s))
     
