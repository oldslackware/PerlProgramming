#!/usr/bin/perl
use warnings;
require "ctime.pl";
require "pwd.pl";
&initpwd;
printf "La directory di lavoro � %s\n", $ENV{PWD};
&chdir("../../..");
printf "La directory principale � %s\n", $ENV{PWD};
my $oggi=&ctime(time);
print "$oggi";

