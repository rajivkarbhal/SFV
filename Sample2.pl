#!/usr/bin/perl
# Perl Script for downloading the sequence/s of feature annotation/s in batch mode (i.e for multiple accession numbers)

use CustFeat;
open (fr,"List.txt");  # The path of Script and List file must be same, otherwise you have to give appropriate path for List file
@ls=<fr>;

foreach $id (@ls) {
	chomp $id;
	$seqch=CustFeat::ActSite($id);
	print $seqch;
	$dm=CustFeat::Domain($id);
	print $dm;
}

 
