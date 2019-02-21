#!/usr/bin/perl
use warnings;
require "ctime.pl";
require "pwd.pl";
&initpwd;
printf "La directory di lavoro è %s\n", $ENV{PWD};
&chdir("../../..");
printf "La directory principale è %s\n", $ENV{PWD};
my $oggi=&ctime(time);
print "$oggi";

