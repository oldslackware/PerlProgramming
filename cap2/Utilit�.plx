#!/usr/bin/perl
use Cwd;
use POSIX qw[tzset]; 
#MI setto come time zone London
$ENV{'TZ'} = 'Europe/London'; 
tzset(); 
print scalar localtime();
$directory=getcwd();                 
print "\nTi trovi nella seguente directory $directory.\n";

