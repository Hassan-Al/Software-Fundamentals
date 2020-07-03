#
# Name: Hassan Al-Saffar
#
# Description: File processes text from a file and gives an output.
#              This lab is seperated into six diffrent parts.

use warnings;
use strict;
open (my $file, 'TestFile.txt') or die $!;
my $line = <$file>;
print $line;
close $file;

#-------------------------------------------------------------------------------------

use warnings;
use strict;
open (my $file, 'TestFile.txt') or die $!;
my @line = <$file>;
print @line;
close $file;

#-------------------------------------------------------------------------------------

use warnings;
use strict;
open (my $file, 'TestFile.txt') or die $!;
my $line = <$file>;
#print $line;
print <$file>;
close $file;

#-------------------------------------------------------------------------------------

use warnings;
use strict;
open (my $file, 'TestFile.txt') or die $!;
while (<$file>)	{
	print "$_";
}
close $file;

#-------------------------------------------------------------------------------------

use warnings;
use strict;
open (my $file, 'TestFile.txt') or die $!;
my $lineno = 0;
while (my $line = <$file>)	{
	$lineno ++;
	print "This is record ";
	print $lineno;
	print ": $line";
} 
print "
The file containted $lineno records";
close $file;

#---------------------------------------------------------------------------------

use warnings;
use strict;
open (my $file, 'TestFile.txt') or die $!;
my $lineno = 0;
while (my $line = <$file>)	
{
	if($line eq "line two\n"){next};
	$lineno ++;
	print "This is record ";
	print $lineno;
	print ": $line";
	if($line eq "line four\n"){last};
}
print "The file containted $lineno records";
close $file;
