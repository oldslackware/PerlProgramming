#!/usr/bin/perl
package Impiegato;
use Carp;
#La seguente libreria permette di ordinare le hash in base alle chiavi.
#use Tie::IxHash;
#tie my %imp,'Tie::IxHash';
sub new{
my $class=shift;
my(%info)=@_;#Serve per ricevere un hash
my $imp={
	"Nome"=>$info{"Nome"}||croak("Nome non assegnato"),
	"Telefono"=>$info{"Telefono"},
	"Indirizzo"=>$info{"Indirizzo"},
	"Stipendio"=>$info{"Stipendio"}||croak("Stipendio non pervenuto"),

       ((defined $info{"Bonus"})?("IdNum"=>$info{"Bonus"}):("Bonus"=>"Impiegato sprovvisto di bonus")),
};
return bless($imp,$class);
}



sub getDati{
my $self=shift;
my ($key,$value);
while( ($key, $value)=each %$self){
          print $key, " = ", $value, "\n";
  }
       print "\n";
    }
    #Distruttore
    sub DESTROY{
	my $self=shift;
	print "Impiegato $self{Nome} distrutto\n";
}
1;
