#!/usr/bin/perl
use warnings;
use strict;
my @array=(1,2,3,4,5,6,7,8,9,10,11,12,13,14);
print "Array di partenza\n@array\nNumeri pari\n";
for(@array){
if($_ %2!=0){
#Con next saltiamo l'elemento
next;
}
print "$_ ";
}
print "\n"; 
 
