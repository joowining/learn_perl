#! /usr/bin/perl
use strict;
use warnings;

sub total{
	my $sum = 0;
	foreach ( 1..1000){
		$sum += $_;
	}

	$sum
}

my $answer = total;

print "the answer of sum 1 to 1000 is : $answer";
