# !/usr/bin/perl
use strict;
use warnings;
use Math::Trig;

print "input your radius: ";
my $user_radius = <STDIN>;
my $pi = pi;
my $circumference = $user_radius * $pi * 2;

print "your input is $user_radius\n";
print "your circumference is $circumference\n";

