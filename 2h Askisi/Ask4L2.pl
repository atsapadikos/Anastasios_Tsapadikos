#!/usr/bin/perl


my $seq = "MNVEHE _123! LLVEE \$";
$seq =~ s/[^A-Z]//g;
print "$seq\n";
