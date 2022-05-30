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

# now
#ok ok
# now again
# This is fine now
use IO::Socket;
my $remote_host = "www.projetrdc.com";
my $remote_port = 443;
my $socket = IO::Socket::INET->new(PeerAddr => $remote_host,
 PeerPort => $remote_port,
 Proto => "tcp",
 Type => SOCK_STREAM)
 or die "Couldn't connect to $remote_host:$remote_port : $@\n";
# ... do something with the socket
print "$@\n";
print $socket "Why don't you call me anymore?\n";
my $answer = <$socket>;
print Dumper $socket;
#print $answer;
# and terminate the connection when we're done
close($socket);

use Sys::Hostname;
my $hostname = hostname();
#or POSIX's uname function:
use POSIX qw(uname); #'
my ($kernel, $hostname, $release, $version, $hardware) = uname();
$hostname = (uname)[1]; # or just one
#Then turn it into an IP address and convert to its canonical name:
use Socket; # for AF_INET
my $address = gethostbyname($hostname)
 or die "Couldn't resolve $hostname : $!";
$hostname = gethostbyaddr($address, AF_INET)
 or die "Couldn't re-resolve $hostname : $!";

print "$address, $hostname\n";

my $name = "www.tradingsonic.com";
my @addresses = gethostbyname($name) or die "Can't resolve $name: $!\n";
@addresses = map { inet_ntoa($_) } @addresses[4 .. $#addresses];
print @addresses;

1;
__END__