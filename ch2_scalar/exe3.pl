# !/usr/bin/perl
use strict;
use warnings;
use Math::Trig;

 
print "input your radius: ";
my $user_radius = <STDIN>;
if ($user_radius lt 0) {
	$user_radius = 0 
}

my $pi = pi;
my $circumference = $user_radius * $pi * 2;

print "your input is $user_radius\n";
print "your circumference is $circumference\n";

