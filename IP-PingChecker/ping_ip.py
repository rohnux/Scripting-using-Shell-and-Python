import subprocess


def pingcheck(servers): 
      print(servers)
      cmd = 'ping'
      # send one packet of data to the host 
      # this is specified by '-c 1' in the argument list 
      outputlist = []
      # Iterate over all the servers in the list and ping each server
      for server in servers:
          temp = subprocess.Popen([cmd, '-c 1', server], stdout = subprocess.PIPE) 
          # get the output as a string
          output = str(temp.communicate()) 
      # store the output in the list
          outputlist.append(output)
      return outputlist


servers=list(open("ip.txt"))
#print(servers)
outputlist=[]

for i in range(len(servers)):
      servers[i] = servers[i].strip('\n')
outputlist=pingcheck(servers)
print(outputlist)


