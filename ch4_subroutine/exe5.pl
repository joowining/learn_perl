#! /usr/bin/perl
use strict;
use warnings;
use feature 'state';

sub greet{
	state @before_user = ();

	if (@before_user == 0){
		push @before_user, $_[0];
		print "Hi $before_user[0]! You are the first one here!\n";
	} else {
		print "Hi $_[0]! I've seen: @before_user\n";
		push @before_user, $_[0];
	}
}

greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );


