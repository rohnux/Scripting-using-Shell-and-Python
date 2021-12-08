Question :
Shell script to take third most CPU & Memory consuming process, this should output to output file with the following properties
Process Name 
% CPU  used 
% Memory used  
PORT 
PID


Solution:

#!/bin/sh

echo "PID %CPU %MEM  COMMAND  PORTS" > output.txt

while true
do

#fetching third most CPU & Memory consuming process,

val=$(ps -eo pid,pcpu,pmem,comm --sort=-pcpu,-pmem | head -n 4 | sed -e '1,3d')
pid=$(ps -eo pid --sort=-pcpu,-pmem | head -n 4 | sed -e '1,3d')
port=$(netstat -tnupl  | grep $pid | awk '{print $4}')

#storing output in the file
echo "$val $port"  >> output.txt

#fetching the value after some interval
sleep 1

done
