#!/usr/bin/perl
use Cat;
use Dog;
use warnings;
use strict;
my $mydog=new Dog;
my $mycat=new Cat;
$mydog->set_attributes;
$mycat->set_attributes;
$mydog->speak;
$mycat->speak;
#Uso dell'operatore versus la cui spiegazione si vede dall'output
Cat::->speak($mydog);