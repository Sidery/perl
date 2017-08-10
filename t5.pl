#! /usr/bin/perl

=head1 DESCRIPTION

		Написать функцию, которая в заданном формате вернет текущее время (н-р, в формате MySQL ГГГГ-ММ-ДД чч:мм:cc).

=head1 AUTHOR

		Dmitriy Chekanov		chekanov.d@gmail.com

=cut

use strict;
use warnings;

my $format = "чч.мм.сс ДД-ММ-ГГГГ";
#my $format = "ГГГГ-ММ-ДД чч:мм:cc"; 
#my $format = "ММ/ДД/ГГГГ чч-мм-сс";
# where чч - hour, мм - minute, сс - second, ДД - day, MM - month, ГГГГ - year

getTime($format);

sub getTime {
		my $format = shift;
		my ($sec,$min,$hour,$day,$mon,$year) = localtime(time);
		$year += 1900; $mon += 1;
	
		$day = sprintf("%02s",$day);
		$mon = sprintf("%02s",$mon);
		$hour = sprintf("%02s",$hour);
		$min = sprintf("%02s",$min);
		$sec = sprintf("%02s",$sec);

		$format =~ s/ГГГГ/$year/;
		$format =~ s/ММ/$mon/;
		$format =~ s/ДД/$day/;
		$format =~ s/чч/$hour/;
		$format =~ s/мм/$min/;
		$format =~ s/сс/$sec/;

		print $format."\n";

}