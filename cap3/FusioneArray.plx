#!/usr/bin/perl
use warnings;
use strict;
my @array1=(1,2,3,4);
my @array2=(5,6,7,8);
#Questa scrittura permette di stampare gli elementi dell'array delimitati da uno spazio
print "@array1\n";
print "@array2\n";
my @array3;
@array3=(@array1,@array2);
print "@array3\n";

 
