#!/usr/bin/perl

my $x = "ATGCGATGGTATG";
my $count = () = $x =~ /ATG/g;; 
print "There are $count starting codons in this sequence\n";
