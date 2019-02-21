#!/usr/bin/perl
use warnings;
use strict;
foreach (sort keys %ENV) { 
  print "$_  =  $ENV{$_}\n"; 
}
