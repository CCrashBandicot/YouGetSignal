#!/usr/bin/perl
#From TeaM MosTa

use HTTP::Request;
use LWP::UserAgent;
if($^O =~ /Win/){
 
   system("cls");
   system("color a");
   system("title Reverse D0main YougetSignal");
 
}else{
 
   system("clear");
}
print q{

	                   *-------------------------------*
	                   |       reverse          ******
	                   |    YouGetSignal       ****
	                   | result in log.txt    ***
	                   *---------------------*
};
print "\n[*]Use Proxy ? (y/n):";
my $chose = <>;
chomp($chose);

if(lc($chose) eq 'y') { 
sleep (3);
print "\n\n [+]Put Proxy (ex: 127.0.0.1:80) :";
my $proxy = <>;
chomp($proxy);
print "\n\n[*]Put Host or IP (host without http://) :";
my $host = <>;
chomp($host);
my $file = "log.txt";
$ua = LWP::UserAgent->new;
$ua->agent("Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.1) Gecko/20090624 Firefox/3.5");
$ua->proxy('http', 'http://'.$proxy.'');
my $zz = $ua->post('http://domains.yougetsignal.com/domains.php',
{
        remoteAddress => $host,
}
);
 
my $resulta = $zz->content;
while ($resulta =~ m/\[([^\]]*)\]/g)
{
        $zeb = $1;
        $zeb =~ m/\"(.*?)\", \"?\"/g;
open(a, ">>log.txt");
print a "http://$1/\n";
close(a);
}
if($resulta =~ /\"domainCount\":\"(.*?)\"/) {
sleep(2);
  print "\n  [*]Total website Recolted: $1\n";
}
if($resulta =~ /\"remoteIpAddress\":\"(.*?)\"/) {
sleep(1);

  print "\n  [*]IP serveur: $1\n";
}
print "\n[+]All website Reversed.\n";
}
if(lc($chose) eq 'n') {

print "\nPut Host or IP (host without http://) :";
my $host = <>;
chomp($host);
my $file = "log.txt";
my $ua = LWP::UserAgent->new(agent => 'Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.1) Gecko/20090624 Firefox/3.5');
my $zz = $ua->post('http://domains.yougetsignal.com/domains.php',
{
        remoteAddress => $host,
}
);
 
my $resulta = $zz->content;
while ($resulta =~ m/\[([^\]]*)\]/g)
{
        $zeb = $1;
        $zeb =~ m/\"(.*?)\", \"?\"/g;
open(a, ">>log.txt");
print a "http://$1/\n";
close(a);
}
if($resulta =~ /\"domainCount\":\"(.*?)\"/) {
sleep(2);
  print "\n  [*]Total website Recolted: $1\n";
}
if($resulta =~ /\"remoteIpAddress\":\"(.*?)\"/) {
sleep(1);

  print "\n  [*]IP serveur: $1\n";
}
print "\n[+]All website Reversed.\n";
}
