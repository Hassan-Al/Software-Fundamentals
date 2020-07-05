#-------------------------------------------------------------
#Description: List the files in the current directory.
#
#Perameters: None
#
#History:
#Date        Name      Description
#2017-12-11  H.Al-Saffar  Initial Creation
#-------------------------------------------------------------

$total_file_size = 0

#Get list of all items in current directories
$dir = Get-ChildItem

#Print some column headings
"{0,-20} {1,10} {2}" -f "Name", "Size", "Creation Date"
"{0,-20} {1,10} {2}" -f ("="*20), ("="*10), ("="*14)

foreach ($item in $dir)  {
    
    #Filter out directories
    if ($item.mode -notmatch "d"){
    
        #print out the file name, size and creation date
        "{0,-20} {1,10:N0} {2:d}" -f ($item.Name + (" " * 20)).substring(0,20), $item.Length, $item.CreationTime
    
        #Tally the file sizes
        $total_file_size += $item.Length

    }

}

if ($dir[0].gettype().Name -eq "FileInfo")
{
    #item is a file
    $dir_name = $dir[0].DirectoryName}
    
    else

{
    #item is a directory
    $dir_name = $dir[0].Parent.Fullname }

echo "The Directory is $dir_name"
echo "The total file size is $total_file_size"
