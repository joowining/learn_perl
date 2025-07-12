#! /usr/bin/perl
use strict;
use warnings;

print "enter mutiple lines ( ctrl+D ends ): \n";

my @lines;

while(my $line = <STDIN>) {
	push @lines, $line;
}

@lines = reverse @lines;

print "result : \n @lines ";
