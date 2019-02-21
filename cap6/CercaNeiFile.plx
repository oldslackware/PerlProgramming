#!/usr/bin/perl
use warnings;
use strict;
my $line;
my $pattern;
if($#ARGV <1){
	die "Inserire almeno due argomenti\n";
	}
	$pattern=shift;
	while($line=<ARGV>){
	print "$ARGV: $.: $line" if $line =~ /$pattern/i;
	close(ARGV) if eof;
}
#Output
#perl CercaNeiFile.plx 'paroladacercare' file1 file2
#file1:6:paroladacercare
#file1:8:paroladacercare
#file2:3:paroladacercare
