#!/usr/bin/perl

use Image::ExifTool qw(ImageInfo);
use MIME::Base64;
use JSON;
use utf8;
use strict;

binmode(STDOUT,':encoding(UTF-8)'); 
my @text;
my @image;
opendir(my $dh,"slices/");
while(readdir $dh){
  next if(($_ eq '.')||($_ eq '..'));
  my @s=stat("slices/$_");
  my $info=ImageInfo("slices/$_");
  my @comment=JSON::decode_json(decode_base64($$info{'UserComment'}));
  $text[decode_base64(reverse $comment[0][0])]=$comment[0][1];
  $image[decode_base64(reverse $comment[0][0])]=$_;
}
closedir $dh;

print join("",@text);

shift @image;
my $img=shift @image;
`cp slices/$img out.jpg`;
while(my $img=shift @image){
  `magick out.jpg slices/$img +append out.jpg`;
}
