num=int(input("Enter the number of line"))
fd=open("file","r")
#for i in range(num):
line=fd.readlines()
print(sizeof(line))
