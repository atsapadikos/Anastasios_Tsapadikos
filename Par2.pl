#!/usr/bin/perl
use strict;
use warnings;

print "What is your favourite color? : ";
my $color = <STDIN>;
chomp $color;
print "Your favorite color is : $color\n";