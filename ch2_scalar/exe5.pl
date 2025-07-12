# !/usr/bin/perl
use strict;
use warnings;

print "input number and string to print as input \n";

my $number = <STDIN>;
my $string = <STDIN>;
my $result = $string x $number;

print "$result";
