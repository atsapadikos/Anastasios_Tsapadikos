#!/usr/bin/perl

my $DNA = "ATGCTAGC";
my $x = length($DNA);
print "The length of the sequence is $x \n";
my $newDNA = "\L$DNA";
print "The DNA sequence with lowercase : $newDNA\n";
my $rDNA = reverse($DNA);
print "The reverse DNA sequence: $rDNA\n";
