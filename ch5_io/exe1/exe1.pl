#! /usr/bin/perl
use strict;
use warnings;

# cat의 정반대로 맨 뒤에서부터 파일을 읽어드리는 프로그램 작성

# 아래의 코드는 
# 파일 핸들이 글로벌 핸들까지 읽어들여서 
# <>가  STDOUT을 읽서어 에러를 발생시킴 
#my @file_arr = reverse @ARGV;

#foreach (@file_arr){
#	open FILEH, $_;
#	foreach(reverse <> ){
#		chomp;
#		print "$_\n";
#	}
#	close;
# }

# 정답 
my @file_arr = reverse @ARGV;

foreach my $filename (@file_arr){
	{
		open my $fh, '<', $filename or die "Can't open $filename: $!";
		my @lines = <$fh>;
		close $fh;
		
		foreach my $line (reverse @lines) {
			chomp $line;
			print "$line\n";
		}

	}
}


