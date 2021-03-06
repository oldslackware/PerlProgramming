#!/usr/bin/perl
#Operazioni sui $file:
#-r $file
#True if $file is a readable $file.
#-w $file
#True if $file is a writeable $file.
#-x $file
#True if $file is an executable $file.
#-o $file
#True if $file is owned by effective uid.
#-e $file
#True if $file exists.
#-z $file
#True if $file is zero in size.
#-s $file
#True if $file has nonzero size. Returns the size of the $file in bytes.
#-f $file
#True if $file is a plain $file.
#-d $file
#True if $file is a directory $file.
#-l $file
#True if $file is a symbolic link.
#-p $file
#True if $file is a named pipe or FIFO.
#-S $file
#True if $file is a socket.
#-b $file
#True if $file is a block special $file.
#-c $file
#True if $file is a character special $file.
#-u $file
#True if $file has a setuid bit set.
#-g $file
#True if $file has a setgid bit set.
#-k $file
#True if $file has a sticky bit set.
#-t $file
#True if $filehandle is opened to a tty.
#-T $file
#True if $file is a text $file.
#-B $file
#True if $file is a binary $file.
#-M $file
#Age of the $file in days since modified.
#-A $file
#Age of the $file in days since last accessed.
#-C $file
#Age of the $file in days since the inode changed.
use warnings;
use strict;
die "Uso perl InfoFile.plx <file>\nUsare almeno un argomento\n" if $#ARGV <0;
my $file=shift @ARGV;
my $result;
 print "Permessi $file:\nR-W-X \n" if -r $file && -w _ && -x _;
 print "Calcolo dimensioni:\n";
 sleep(3);
 open(SPACE,"du -h $file |")or die "Non posso aprire $!";
 while($result=<SPACE>){
 print $result;
 }
 close(SPACE);	
 print 'x' x 100,"\n";		
 print '~' x 10,"$file � leggibile\n" if -r  $file;
 print '~' x 10,"$file � scrivibile\n" if -w  $file;
 print '~' x 10,"$file ha i permessi di esecuzione\n" if -x  $file;			
 print '~' x 10,"$file � una directory\n" if -d $file;
 print '~' x 10,"$file � di tipo testo\n" if -T $file;
 printf '~' x 10,"$file � stato modificato  %d giorni f�.\n", -M $file;
 print '~' x 10,"$file �  regolare\n" if -f  $file;
 print '~' x 10,"Il file ha settato un user id.\n" if  -u _;
 print 'x' x 90,"\n";
