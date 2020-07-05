#-------------------------------------------------------------
#Description: Processes lines in a file and increments a tally that is displayed
#
#Perameters: None
#
#History:
#Date        Name      Description
#2018-1-2  H.Al-Saffar  Initial Creation
#-------------------------------------------------------------

#set counter
Count=0

#open file.
Newfile = open('newfile.txt','r')

for line in Newfile:
    Count += 1
    if line == "line 2\n": continue
    print(line, end='')
    if line == "line 4\n": break
    
    

print("\nEnd of Loop\nThere are " +str(Count) + " lines")
Newfile.close()
