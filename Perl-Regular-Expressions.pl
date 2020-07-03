#---------------------------------------------------------
# Name: Hassan Al-Saffar
#
# Description: 
#
# Date: 27/9/2017
#---------------------------------------------------------

use warnings;
use strict;
open (my $file, 'sample.log') or die $!;
my $lineno = 0;
while (my $line = <$file>)	
{
	$lineno ++;
	print "Record ";
	print $lineno;
	print ": $line";
} 
print "This file contains $lineno records";
close $file;

#----------------------------------------------------------

use warnings;
use strict;
open (my $file, 'sample.log') or die $!;
my $lineno = 0;
while (my $line = <$file>)	
{
	if ($line =~ /sshd/)
	{
		$lineno ++; 
		print "Record ";
		print $lineno;
		print ": $line";
	}
} 
print "This file contains $lineno records";
close $file;

#----------------------------------------------------------

use warnings;
use strict;
open (my $file, 'sample.log') or die $!;
my $lineno = 0;
while (my $line = <$file>)	
{
	if ($line =~ /$ARGV[0]/)
	{
		$lineno ++; 
		#print "Record ";
		#print $lineno;
		#print ": $line";
	}
} 
print "This file contains $lineno records";
close $file;

#----------------------------------------------------------

use warnings;
use strict;
open (my $file, 'sample.log') or die $!;
my $lineno = 0;
while (my $line = <$file>)	
{
	if ($line =~ /$ARGV[0]/)
	{	
		$lineno ++;
		if ($ARGV[1])
		{ 
			print "Record ";
			print $lineno;
			print ": $line";
		}
	}
} 
print "This file contains $lineno records";
close $file;

#----------------------------------------------------------

use warnings;
use strict;
open (my $file, 'sample.log') or die $!;
my $lineno = 0;
while (my $line = <$file>)	
{
	if ($line =~ /$ARGV[0]/)
	{	
		$lineno ++;
		if ($ARGV[1])
		{
			print substr($line, 0, $ARGV[1]),"\n";
		}
	}
} 
print "This file contains $lineno records";
close $file;

#---------------------------------------------------------

use warnings;
use strict;
open (my $file, 'sample.log') or die $!;
my $lineno = 0;
while (my $line = <$file>)	
{
	if ($line =~ /$ARGV[0]/)
	{	
		$lineno ++;
		if ($ARGV[1])
		{
			$line =~ /(SRC=[0-9\.]* ).*(SPT=[0-9\.]* )/;
			my $src_ip = $1;
			my $src_port = $2;
			print $src_ip, $src_port, substr($line, 0, $ARGV[1]), "\n";
		}
	}
} 
print "This file contains $lineno records";
close $file;

#--------------------------------------------------------

use warnings;
use strict;
open (my $file, 'sample.log') or die $!;
my $lineno = 0;
while (my $line = <$file>)	
{
	if ($line =~ /$ARGV[0]/)
	#From previous versions of this source code. We have changed our original
	#regular expression from /sshd/ to /$ARGV[0]/. This expression is a
	#reference to an array. @ARGV can contain any string inputted into command prompt
	#to give the program a parameter. This makes it easy to print records
	#containing the strings we want, without changing the source code.
	{
		$lineno ++;
		if ($ARGV[1])
		#This if statement tells our program how much to print in the command
		#prompt. This means if the value is greater than 0, the number inputed will
		#reflect the amount of characters shown in the command prompt. If zero is
		#inputted, the if statement will not be true and will skip this command.
		{
			$line =~ /(SRC=[0-9\.]* ).*(SPT=[0-9\.]* )/;
			my $src_ip = $1;
			my $src_port = $2;
			#In lines 22 & 23 we assign "SRC" ($src_ip) to the scalar variable $1.
			#We also do the same for "SPT" ($src_port) to $2. By doing this we
			#store the source port and source IP information extracted by the regular
			#expression into $1 and $2, to variables $src_ip & $src_port.
			print $src_ip, $src_port, substr($line, 0, $ARGV[1]), "\n";
			#This tell Perl if the following statement is true, what to print.
			#This is useful if we want our source program show use the specific
			#strings we want, /SRC=[0-9\.]* / matches "SRC=" followed by any number of
			#characters followed by a space. This is also true for /SPT=[0-9\.]* /
		}
	}
} 
print "This file contains $lineno records";
close $file;
