#!/usr/bin/perl
use Data::Dumper;

open(F,"<ELF-HAWK-dump.csv");
while(<F>){
  next unless(/TRUE/);
  chop;
  $data.=$_;
}
@bm=$data=~/TRUE|FALSE/g;
@bm=map { $_ eq "TRUE" ? '1':'0' } @bm;
$bm=join("",@bm);
$chars=length($bm);
@s=pack("B$chars",$bm);
print @s;
