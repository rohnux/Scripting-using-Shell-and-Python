from collections import defaultdict
fd = open("a.log","r")
lines=fd.readlines()
#print("GET",lines.count("GET"))
#print("PUT",lines.count("PUT"))
#print("POST",lines.count("POST"))
get_count=0
dict=defaultdict(dict)

for a in lines:
     if (a.find("GET") > 0):   
          get_count+=1
          dict[a[11:16]]['GET']=get_count
     elif (a.count("PUT") > 0):
          dict[a[11:16]]['PUT']= a.count("PUT")
     elif (a.count("POST") > 0):
          dict[a[11:16]]['POST']= a.count("POST")
     
print(dict)  



