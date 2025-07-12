#! /usr/bin/perl

use strict;
use warnings;

my $scalar_numbers;
my @numbers;
my @names = ( "freed", "betty", "barney", "dino", "wilma", "pebbles", "bamm-bamm");

print "Input numbers each to print names indexes : ";
$scalar_numbers = <STDIN>;
@numbers = split /\s+/, $scalar_numbers;

foreach my $num (@numbers){
	print "@names[$num-1]" . ", ";
}


print "\n";
