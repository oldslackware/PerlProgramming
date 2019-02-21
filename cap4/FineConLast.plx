#!/usr/bin/perl
use warnings;
use strict;
my @array=("Debian","Slackware","Open Bsd","Ubuntu","Suse");
for(@array){
last if $_ eq "Ubuntu";
print "$_ ";
}
print "\n"; 
