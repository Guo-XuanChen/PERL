#!/usr/bin/perl
=head
    File    : diffArray.pl
    Time    : 2018/04/17 02:15:14
    Author  : Guo,Xuan-Chen
=cut

# /* pragmas */ #
use strict;
use warnings;
use feature qw(say switch);
use Data::Dumper qw(Dumper);
use Array::Diff;

# /* create array */ #
my @arr1 = qw(One Two Three);
my @arr2 = qw(Four Five Six);

# /* difference array  */ #
my $diff = Array::Diff->diff(\@arr1, \@arr2);
my @addArray = @{$diff->added};
my @delArray = @{$diff->deleted};

# /* print difference array */ #
if($#addArray != -1){
    foreach(@addArray){
        say;
    }
}

if($#delArray != -1){
    foreach(@delArray){
        say;
    }
}
