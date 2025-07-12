#! /usr/bin/perl
use strict;
use warnings;

print "input your names : ";
my $input_string = <STDIN>;
my @arr_strings = split /\s+/, $input_string;

foreach my $name (sort @arr_strings){
	print "$name \t";
}

print "\n";

