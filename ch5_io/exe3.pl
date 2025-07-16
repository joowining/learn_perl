#! /usr/bin/perl
use strict;
use warnings;

# 사용자로부터 세개의 입력을 받는다. 
# 1. 오른쪽으로 공백을 있게 하는 칸 길이
# 	-> 줄자는 이거보다 10칸 크게 만든다. 
# 2.출력할 단어 1
# 3.출력할 단어 2
# 

my $space_number = <STDIN>; 
chomp($space_number);

my $input_word_1 = <STDIN>;
chomp($input_word_1);
my $len_1 = 10 - length($input_word_1);
my $input_word_2 = <STDIN>;
chomp($input_word_2);
my $len_2 = 10 -length($input_word_2);
my $num = 1;
my $print_num = 0;
my @line_num = qw ( 1 2 3 4 5 6 7 8 9 0 );
while ( $num <= ($space_number + 10) ){
	print "$line_num[$print_num]";
	$num += 1;
	$print_num +=1;
	if ($print_num > 9 ){
		$print_num = 0;
	}
		
}
print "\n";
print " " x $len_1;
printf "%s\n", $input_word_1;
print " " x $len_2;
printf "%s\n", $input_word_2;
