#!/usr/bin/perl
use warnings;
use strict;
my $oggi;
open(CALENDARIO,"date |");
$oggi=<CALENDARIO>;
print $oggi;
close(CALENDARIO);
