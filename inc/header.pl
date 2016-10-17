#!/usr/bin/perl
use strict;
use warnings;
use FindBin '$Bin';
## ALISAM TECHNOLOGY 2015
######################################################################################################################################################################################################
######################################################################################################################################################################################################
our ($nobanner, $logoVersion, @OTHERS, @c, @TT);
######################################################################################################################################################################################################
######################################################################################################################################################################################################
## ADVISE
sub advise {
  mtak(); ptak();
  if (-e "/usr/bin/atscan") { print $c[4]."[!] $OTHERS[5]: $TT[7]\n"; }
  else{ print "[!] $OTHERS[5]: perl ./",basename($0)," $TT[8] ./",basename($0)," $TT[9]\n"; }
  logoff();
}
######################################################################################################################################################################################################
######################################################################################################################################################################################################
## EXIT 
sub logoff { deleteLists(); exit(); }
######################################################################################################################################################################################################
######################################################################################################################################################################################################
## BANNER
sub banner { require "$Bin/inc/theme/banner.pl"; }
######################################################################################################################################################################################################
######################################################################################################################################################################################################
## BAD ARGUMENTS
sub badArgs { banner(); advise(); }
######################################################################################################################################################################################################
######################################################################################################################################################################################################
## PRINT BANNER
if (!defined $nobanner) { banner(); }
######################################################################################################################################################################################################
######################################################################################################################################################################################################
## SCAN INFO
sub osinfo { 
  use Config;
  print $c[5]." [::] $TT[0]:: ".$c[8]."$TT[5]\n".$c[5]." [::] $TT[1]:: ".$c[8]."$TT[6] [$logoVersion]\n".$c[5]." [::] $TT[2]:: ".$c[8]."$Bin/",basename($0)," \n";
  print $c[5]." [::] $TT[3]:: ".$c[8]."[$^V]\n".$c[5]." [::] $TT[4]:: ".$c[8]."[$Config{ osname} $Config{ archname}]\n";
}
######################################################################################################################################################################################################
######################################################################################################################################################################################################
1;
######################################################################################################################################################################################################
######################################################################################################################################################################################################
