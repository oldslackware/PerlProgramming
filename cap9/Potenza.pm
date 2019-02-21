#!/usr/bin/perl
use warnings; 
use strict;
package Potenza;
sub TIESCALAR{
	my $class=shift;
	my $data=shift;
	bless(\$data,$class);
}
sub FETCH{
my $self=shift;
$$self **=2;

}
sub STORE{
	my $self=shift;
	$$self=shift;
	}
	1;