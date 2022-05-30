#!/usr/bin/perl

use strict;
use CGI::Carp qw(fatalsToBrowser);
use vars qw(%AqFmKJ %form %variable);
use CGI qw/:standard/;
use IO::File;
use lib "./room/"; use lib "/kunden/homepages/26/d890026759/htdocs/sonic/room/";  use lib "/kunden/homepages/26/d890026759/htdocs/sonic/room/"; use lib "./lib"; use lib "./room/lib/"; use lib "./lib/site/lib"; use lib "./room/lib/site"; use lib "./room/lib/site/lib/"; use lib "/kunden/homepages/26/d890026759/htdocs/sonic/room/lib/site/lib"; use lib "lib/vendor/lib"; use lib "/kunden/homepages/26/d890026759/htdocs/sonic/room/lib/site/lib/auto"; use lib "./lib/site/lib/auto"; use lib "./room/";
use POSIX qw(strftime);
use Data::Dumper;
use warnings;
#use IO::Handle;
#$| = 1;
$| ++;
#testing
local $|=1;

if ($ENV{'REQUEST_SCHEME'} =~ /http/){
	print "Content-type: text/html; Accept-Encoding: identity\n\n";
}

if (($ENV{'SCRIPT_NAME'} =~ /cgi-bin/ or $ENV{'OS'} =~ /Windows_NT/i) and $ENV{'HOME'} !~ /kunden/i){ 
	#print "ENV{'OS'} $ENV{'OS'}\n";
	use lib "C:/Perl/lib"; use lib "C:/Perl/site/lib";
	use lib "C:/usr/"; use lib "C:/usr/lib"; use lib "C:/usr/site/lib";
	use lib "C:/Apache/cgi-bin";
	use CGI::Carp qw(fatalsToBrowser);
	use strict;
	use warnings; 
}else{
	use lib "./room/"; use lib "/kunden/homepages/26/d890026759/htdocs/sonic/room/";  
	use lib "/kunden/homepages/26/d890026759/htdocs/sonic/room/"; use lib "./lib"; 
	use lib "./room/lib/"; use lib "./lib/site/lib"; use lib "./room/lib/site"; 
	use lib "/kunden/homepages/26/d890026759/htdocs/sonic/room/lib/site/lib"; use lib "lib/vendor/lib"; 
	use lib "/kunden/homepages/26/d890026759/htdocs/sonic/room/lib/site/lib/auto"; 
	use lib "./lib/site/lib/auto"; use lib "./room/"; 	
}

local %AqFmKJ;

require ("prdc_os.pl");
#get_os('watchdog');

print "Check Synthaxe<br>";

my $check = `perl -c trading_os.pl`;

print "$check<br>"; 

print "I except these digits to tick after each second.\n<br>";
print "deactivate GZIP compression and mod_deflate in Apache to unbuffer the STDOUT.\n<br>";

error_log();
print STDERR "Memory::Usage<br>\n";

#use Memory::Usage;
#use Memory::Process;
#my $mu = Memory::Usage->new();

# Record amount of memory used by current process
#$mu->record('starting work');

# Object.
#my $m = Memory::Process->new;
 
# Example process.
#$m->record("Before my big method");

    #my $s = "abc"; 
	#memorycheck($s);
	#Dump $s;
    #$s = undef; Dump $s;
    #undef $s;   Dump $s;
	#mstat $s;
	#my $a = 126;
	#print STDERR "Size ", size($a), "<br>";
	#print STDERR "total_size ", total_size($a), "<br>";	
	
	#print STDERR "Test Memory\n";
#my $var = ('foo' x 100);
use LWP::UserAgent;	
use JSON;
			
			#my $isTime = strftime "%d.%m.%y %H:%M:%S", localtime(time);			
			#print "1. Get Tickers Price Change from $API $isTime<br>\n";
			
			
		print 'Memory usage : ', memory_usage(), "\n<br>";	
		my $num = 0;
	my $alias1 = "ody";
	my $query = "SELECT * FROM reg_dir WHERE Username='$alias1'"; 

my ($usid,$username,$password,$email,$salutation,$firstname,$lastname,$street,$snumber,$zip,$city,$country,$tel,$mobile,$fax,$enterp_id,$superuser,$subuser,$gquestion,$ganswer,$pub,$news,$age,$blocked,$evn,$schufa,$keycode,$activated,$position,$regtime,$Title,$region,$mainuser,$locked,$deactivate,$lockedtime,$deactivatetime,$blockedtime,$unlockkey,$profilename,$title,$premium,$premiumTime,$premiumExpire,$premiumHistory,$premiumStatus,$regresv9,$regresv10);
if ($query ne ""){
	my $func = "select";
	my $sth = mysql_function($AqFmKJ{'database34'},$query,$func,'read_reg_file'); 
	#my $isname = $sth->fetchrow();	
	my $numRows = $sth->rows;
	#print "$numRows  ...";
	#print "$numRows <br>";
	#return '' unless -r "$AqFmKJ{'baseurl'}$AqFmKJ{'regdir'}/$alias1.dat" and -T "$AqFmKJ{'baseurl'}$AqFmKJ{'regdir'}/$alias1.dat";
	#return '' unless ($numRows > 0);
	my $num = 0; my $file;
	
	use Data::Dumper;
	print Dumper $sth;
	while (my $ref = $sth->fetchrow_hashref()) {					 
	#$file = $ref->{'Number'};
	#my $id = $ref->{'TippID'};	
	
	$usid = $ref->{'USID'}; $username = $ref->{'Username'}; $password = $ref->{'RegPassword'}; $email = $ref->{'RegEmail'}; $salutation = $ref->{'Salutation'}; $firstname = $ref->{'Firstname'}; $lastname = $ref->{'Lastname'}; $street = $ref->{'Street'}; $snumber = $ref->{'SNumber'}; $zip = $ref->{'Zip'}; $city = $ref->{'City'}; $country = $ref->{'Country'}; $tel = $ref->{'Phone'}; $mobile = $ref->{'Mobile'}; $fax = $ref->{'Fax'}; $enterp_id = $ref->{'Enterp_id'}; $superuser = $ref->{'Superuser'}; $subuser = $ref->{'Subuser'}; $gquestion = $ref->{'Gquestion'}; $ganswer = $ref->{'Ganswer'}; $pub = $ref->{'Pub'}; $news = $ref->{'News'}; $age = $ref->{'Age'}; $blocked = $ref->{'Blocked'}; $evn = $ref->{'Evn'}; $schufa = $ref->{'Schufa'}; $keycode = $ref->{'Keycode'}; $activated = $ref->{'Activated'}; $position = $ref->{'Position'}; $regtime = $ref->{'Regtime'}; $Title = $ref->{'Title'}; $region = $ref->{'Region'}; $mainuser = $ref->{'Mainuser'}; $locked = $ref->{'Locked'}; $deactivate = $ref->{'Deactivate'}; $lockedtime = $ref->{'LockedTime'}; $deactivatetime = $ref->{'DeactivateTime'}; $blockedtime = $ref->{'BlockedTime'}; $unlockkey = $ref->{'Unlockkey'}; $profilename = $ref->{'ProfileName'}; $title = $ref->{'Title'}; $premium = $ref->{'PremiumAccount'}; $premiumTime = $ref->{'PremiumTime'}; $premiumExpire = $ref->{'PremiumExpire'}; $premiumHistory = $ref->{'PremiumHistory'}; $premiumStatus = $ref->{'PremiumStatus'}; $regresv9 = $ref->{'REGResv9'}; $regresv10 = $ref->{'REGResv10'};	
	#print "$query $AqFmKJ{'database34'}";
	#open FILE, "$AqFmKJ{'baseurl'}$AqFmKJ{'regdir'}/$alias1.dat";
	#my ($username,$password,$email,$salutation,$firstname,$lastname,$street,$snumber,$zip,$city,$country,$tel,$mobile,$fax,$enterp_id,$superuser,$subuser,$gquestion,$ganswer,$pub,$news,$age,$blocked,$evn,$schufa,$keycode,$activated,$position,$resv) = <FILE>; close FILE;
	chomp ($usid,$username,$password,$email,$salutation,$firstname,$lastname,$street,$snumber,$zip,$city,$country,$tel,$mobile,$fax,$enterp_id,$superuser,$subuser,$gquestion,$ganswer,$pub,$news,$age,$blocked,$evn,$schufa,$keycode,$activated,$position,$regtime,$Title,$region,$mainuser,$locked,$deactivate,$lockedtime,$deactivatetime,$blockedtime,$unlockkey,$profilename,$title,$premium,$premiumTime,$premiumExpire,$premiumHistory,$premiumStatus,$regresv9,$regresv10);
	#print "<br>$blocked, $locked, $deactivate";
	print "<br>$usid,$username,$password,$email,$salutation,$firstname,$lastname,$street,$snumber,$zip,$city,$country,$tel,$mobile";
	#print "<br>($usid,$username,$password,$email,$salutation,$firstname,$lastname,$street,$snumber,$zip,$city,$country,$tel,$mobile,$fax,$enterp_id,$superuser,$subuser,$gquestion,$ganswer,$pub,$news,$age,$blocked,$evn,$schufa,$keycode,$activated,$position,$regtime,$Title,$region,$mainuser,$locked,$deactivate,$lockedtime,$deactivatetime,$blockedtime,$unlockkey,$profilename,$title,$premium,$premiumTime,$premiumExpire,$premiumHistory,$premiumStatus,$regresv9,$regresv10)";
	}
}
print 'Memory usage : ', memory_usage(), "\n<br>";
	
#systemmemory();
		
# Record amount in use afterwards
#$mu->record('after something_memory_intensive()');	
# $var = 2;
# Report
#$mu->report(); 

# State
#$mu->state(); 
 
# Spit out a report
#$mu->dump();

#$m->record("After my big method");
#sleep 1;

#$m->record("End");

#$m->reset;
#my @report = $m->report;
#my $report = $m->report;
 
# Print report.
#print $m->dump."\n";

#print Dumper @report;

#################
sub memorycheck	{
	
	use Devel::Peek;
	
	
	
	my ($in,@in,%in) = @_;

	print STDERR "Devel::Peek<br>\n";
	if ($in){	
    	Dump $in;
	}
	if (@in){	
    	Dump $in;
	}	
	if (%in){	
    	Dump $in;
	}			
}
###############	
sub error_log {
	
	open (my $fh, '>>', 'error2.log');  #|| die "can't open logfile.txt";
	open (STDERR, ">>&=", $fh); #|| die "can't redirect STDERR";
	#open (STDERR, ">&", STDOUT);
	$fh->autoflush(1);
	
	my $need_work = 5;
	my $i_tried   = 0;
	
	while ( $need_work > $i_tried ) 
	{
		my $a;
		$i_tried++;
	 
		print "$a\n";   #this generates a run time warning!!!!!!
		#warn "this is warning $i_tried"; #an explict warning 
		#print $fh "I've tried $i_tried things as a test\n";
	}	
}	
###############
sub systemmemory {

=test	
	use Win32::API::Prototype;
	
	my $memoryStatus = AllocMemory( 32 );
	ApiLink( 'Kernel32', 'GlobalMemoryStatus', 'P', 'V' );
	
	GlobalMemoryStatus( $memoryStatus );
	
	my @keys = qw[
		length PercentageLoad
		TotalPhysical AvailablePhysical
		TotalPaged AvailablePaged
		TotalVirtualMemory AvailableVirtualMemory
	];
	my %mStatus;
	@mStatus{ @keys } = unpack 'V8', $memoryStatus;
	
	printf '%30s : %.2f' . $/,
		$_, $mStatus{ $_ } / 2**20
		for @keys[1 .. $#keys ];
=cut		
		
}
1;
__END__
