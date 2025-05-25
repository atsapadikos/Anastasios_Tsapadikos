#!/usr/bin/perl

while(<>) 
{ 
    if($_=~/^>\S+\|(\w+)\|/) { 
        print "Found  accession : $1\n";
    }
}