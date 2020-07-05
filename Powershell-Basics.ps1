#-------------------------------------------------------------
#Description: List the files in the current directory.
#
#Perameters: Counts the number of commands whose source is NetSecurity
#             Accepts one string as a command line parameter, and
#             prints it in both upper and lower case
#
#History:
#Date        Name      Description
#2017-12-11  H.Al-Saffar  Initial Creation
#-------------------------------------------------------------

$var = Get-Command

$func = $var | where Source -Match 'NetSecurity'
$func.count

"Name $($args[0])".ToUpper()
"Name $($args[0])".ToLower()
