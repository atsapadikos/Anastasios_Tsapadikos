#!/usr/bin/perl

while(<>) 
{ 
    if(/^[AGCT]+/) { 
        print "This Line of the Gene ONly consists of A T C G\n";
    }
    else
    {
        print "This Line does not contain only A T C G\n";
    }
}