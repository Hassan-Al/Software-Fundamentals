#-------------------------------------------------------------
#Description: Processes logs in network traffic file, uses regular expression to filter logs with 
#
#Perameters: None
#
#History:
#Date        Name      Description
#2017-1-8  H.Al-Saffar  Initial Creation
#-------------------------------------------------------------

from sys import argv
import re

#open file to be processed 
LogFile = open(r"C:\temp\sample.log", "r")

Count = 0

#Compile the regex
MyRegex1 = re.compile(argv[1])
MyRegex2 = re.compile(r"(?P<sip>SRC=[0-9.]*).*(?P<spt>SPT=[0-9]*)")

#process the file
for line in LogFile:
	
	#Search current line from file for regex specified via command line
	if MyRegex1.search(line):
		Count += 1
		
		MyMatch = MyRegex2.search(line)
		if MyMatch:
			Srcip = MyMatch.group("sip")
			SrcPort = MyMatch.group("spt")
			print(Srcip, SrcPort, line[:45])

print("the file contains " + str(Count) + " matching records")
		
#close the file
LogFile.close()
