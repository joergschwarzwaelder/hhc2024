#!/usr/bin/perl

use Algorithm::Permute;
use strict;

my %memory;
my @sets=([2,2,6,7,8],[2,6,6,7,8],[2,6,7,7,8],[2,6,7,8,8]);

foreach my $digits (@sets){
  my $iter=Algorithm::Permute->new(\@{$digits});
  while(my @perm=$iter->next){
    my $code=join("",@perm);
    next if($memory{$code});
    $memory{$code}=1;
    printf "\r%s:",$code;
    my $cmd=sprintf "curl -s 'https://hhc24-frostykeypad.holidayhackchallenge.com/submit' -X POST -H 'Content-Type: application/json' --data-raw '{\"answer\":\"%s\"}'",$code;
    my $r=`$cmd`;
    if($r=~/success/){
      print $r;
    }
    sleep 1;
  }
}
