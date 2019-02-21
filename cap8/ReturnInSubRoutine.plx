 #!/usr/bin/perl
use warnings;
use strict;
my @first=(1,2,3,4,5);
my @second=(6,7,8,9,10);
my @somma=&somma(\@first,\@second);
print "@somma\n";

sub somma{
my ($x,$y)=@_;#Copio i riferimenti degl'array
#Verifico che nella funzione vengano passati due riferimenti di tipo array.
unless (@_ ==2 && ref($x) eq 'ARRAY' && ref($y) eq 'ARRAY') {
die "Uso: somma ARRAYREF1 ARRAYREF2";
}
my @total;
my $i=0;
for($i=0;$i<@$x;$i++){
$total[$i]=$x->[$i]+$y->[$i];
}
return @total;
}
