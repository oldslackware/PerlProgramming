#!/usr/bin/perl
use warnings;
use strict;

my ($username,$pwline,$logged,$logged_on,$line);
unless ($#ARGV ==0){
	die "Usa:$0 <argomenti>:$!";
}
open(PASSWD, "/etc/passwd") or die "Non posso aprire: $!";
$username=shift@ARGV;#Mi prendo l'userneme passato da riga di comando
while($pwline=<PASSWD>){#Per ogni linea
	if ($pwline =~ /$username:/){
		print "$username fà parte degli utenti del sistema.\n";
	}	
}


	close PASSWD;
	open(LOGGEDON, "who |") or die "Non posso aprire: $!";
	while($logged=<LOGGEDON>){#Cerco l'username nell'output restituito da who
		if($logged =~ /$username/){
			$logged_on=1;
			last;
		}
	}
		close LOGGEDON;
		die "$username non è loggato o non fà parte degli utenti del sistema\n" if ! $logged_on;
		print "$username è loggato nel sisteme e stà lanciando questi processi.\n";
		open(PROC, "ps aux |") or die "Non posso aprire $!";
		while($line=<PROC>){#Per ogni processo associato a $username
			print "$line" if $line =~ /$username/;
		}
		close PROC;
		print '*' x 100;#ALla fine dell'output mi metto 100 asterischi
		print "\nAll done.\n";
