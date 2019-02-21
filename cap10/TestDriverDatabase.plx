#!/usr/bin/perl
use DBI;
use warnings;
use strict;
print "Driver disponibili per il database\n";
print '~' x 50,"\n";
#tramite join possiamo unire un array di dati con una  stringa.
print join("\n",DBI->available_drivers()),"\n\n";