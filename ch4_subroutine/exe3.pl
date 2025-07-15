#! /usr/bin/perl
use strict;
use warnings;

sub above_average {
	my $sum = 0;
	my $average = 0;
	my @answer = ();

	foreach(@_){
		$sum += $_;	
	}

	$average = $sum / @_;

	foreach(@_){
		if ( $_ > $average ){
			push @answer, $_;
		}
	}

	@answer 
}	

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1.. 10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
