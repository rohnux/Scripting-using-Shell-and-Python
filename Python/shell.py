import os
import subprocess

#lis_dir = subprocess.run(["ls","-al","awk '{print $1}'"])
os.system("cat test.sh |awk '{print $1}' | uniq -c | sort -nr  | grep -e 192.168.1.3" )
os.system("grep -e 200 test.sh | awk -F ' ' '{print $7}' ")
