while(<>) 
{ 
    if(/PubMed=\d+/) { 
        print "$_";
    }
}