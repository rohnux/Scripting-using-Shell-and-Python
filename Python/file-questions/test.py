import os 
import datetime

#fd =open("count.txt","a")

os.system("cat a.log | sort -n | awk '{print $2 "  " $4}' | uniq -c  | grep GET >> count.txt")
os.system("cat a.log | sort -n | awk '{print $2 "  " $4}' | uniq -c  | grep PUT >> count.txt ")
os.system("cat a.log | sort -n | awk '{print $2 "  " $4}' | uniq -c  | grep POST >> count.txt" )



