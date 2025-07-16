#! /usr/bin/perl
use strict;
use warnings;
my $space_number = 30; 

# 사용자 입력을 받아서 그 단어의 맨 마지막 단어가 10번째에서 멈추게 하려면 최초 출력 시점이 (10 - 문자열 길이 ) 이어야 한다.  따라서 10 - 문자열 길이만큼 인덴트를 주어서 printf로 출력한다.

my $input_word_1 = <STDIN>;
chomp($input_word_1);
my $len_1 = 10 - length($input_word_1);
my $input_word_2 = <STDIN>;
chomp($input_word_2);
my $len_2 = 10 -length($input_word_2);
my $num = 1;
my $print_num = 0;
my @line_num = qw ( 1 2 3 4 5 6 7 8 9 0 );
while ( $num <= $space_number ){
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
