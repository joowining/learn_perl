#! /usr/bin/perl
use strict;
use warnings;
use feature 'state';

sub greet{
	state $before_user = undef;

	if (!defined($before_user)){
		$before_user = $_[0];
		print "Hi $before_user! You are the first one here!\n";
	} else {
		print "Hi $_[0]! $before_user is also here!\n";
		$before_user = $_[0];
	}
}

greet("Fred");
greet("Barney");
