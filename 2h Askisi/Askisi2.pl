#!/usr/bin/perl

#To vrhka Etoimo sto internet
%genetic_code = (
'GCA'=>'A', #Alanine
'GCC'=>'A', #Alanine
'GCG'=>'A', #Alanine
'GCT'=>'A', #Alanine
'AGA'=>'R', #Arginine
'AGG'=>'R', #Arginine
'CGA'=>'R', #Arginine
'CGC'=>'R', #Arginine
'CGG'=>'R', #Arginine
'CGT'=>'R', #Arginine
'AAC'=>'N', #Asparagine
'AAT'=>'N', #Asparagine
'GAC'=>'D', #Aspartic acid
'GAT'=>'D', #Aspartic acid
'TGC'=>'C', #Cysteine
'TGT'=>'C', #Cysteine
'GAA'=>'E', #GlTtamic acid
'GAG'=>'E', #GlTtamic acid
'CAA'=>'Q', #GlTtamine
'CAG'=>'Q', #GlTtamine
'GGA'=>'G', #Glycine
'GGC'=>'G', #Glycine
'GGG'=>'G', #Glycine
'GGT'=>'G', #Glycine
'CAC'=>'H', #Histidine
'CAT'=>'H', #Histidine
'ATA'=>'I', #IsoleTcine
'ATC'=>'I', #IsoleTcine
'ATT'=>'I', #IsoleTcine
'TTA'=>'L', #LeTcine
'TTG'=>'L', #LeTcine
'CTA'=>'L', #LeTcine
'CTC'=>'L', #LeTcine
'CTG'=>'L', #LeTcine
'CTT'=>'L', #LeTcine
'AAA'=>'K', #Lysine
'AAG'=>'K', #Lysine
'ATG'=>'M', #Methionine
'TTC'=>'F', #Phenylalanine
'TTT'=>'F', #Phenylalanine
'CCA'=>'P', #Proline
'CCC'=>'P', #Proline
'CCG'=>'P', #Proline
'CCT'=>'P', #Proline
'AGC'=>'S', #Serine
'AGT'=>'S', #Serine
'TCA'=>'S', #Serine
'TCC'=>'S', #Serine
'TCG'=>'S', #Serine
'TCT'=>'S', #Serine
'ACA'=>'T', #Threonine
'ACC'=>'T', #Threonine
'ACG'=>'T', #Threonine
'ACT'=>'T', #Threonine
'TGG'=>'W', #Tryptophan
'TAC'=>'Y', #Tyrosine
'TAT'=>'Y', #Tyrosine
'GTA'=>'V', #Valine
'GTC'=>'V', #Valine
'GTG'=>'V', #Valine
'GTT'=>'V', #Valine
'TAA'=>'-', #STOP
'TAG'=>'-', #STOP
'TGA'=>'-', #STOP
);

my $x = "AAGGCTATGCGTACTGATGTAGGCCATTAGCTTAACTGA";
my $rx = $x;
$rx =~tr/ATCG/TAGC/;
$rx = reverse($rx);

my $i;
my $j;
my $codon;
my $y;
my $tripleta;

for($i=0; $i < length($x)-3; $i ++)
{
    $codon = substr($x, $i, 3);
    if ($codon eq "ATG")
    {
        print "Starting Codon at position $i\n";
        for($j=$i;$j<=length($x)-3;$j+=3)
        {
            $y = substr($x,$j,3);
            $tripleta = $genetic_code{$y};
            if($tripleta eq '-')
            {
                print "\n";
                last;
            }
            print "$tripleta";
        }
    }

}


for($i=0; $i < length($rx)-3; $i ++)
{
    $codon = substr($rx, $i, 3);
    if ($codon eq "ATG")
    {
        print "Starting Codon of reverse DNA sequence at position $i\n";
        for($j=$i;$j<=length($rx)-3;$j+=3)
        {
            $y = substr($rx,$j,3);
            $tripleta = $genetic_code{$y};
            if($tripleta eq '-')
            {
                print "\n";
                last;
            }
            print "$tripleta";
        }
    }
}

