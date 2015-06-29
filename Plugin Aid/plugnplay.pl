
#!/usr/bin/perl
#Generic Plugin Maker
#Make sure you have Slurp installed. To install Slurp run: perl -e'use CPAN; install "File::Slurp"'
use File::Slurp;
print "Save the event IDs and SIDs in  sid.txt with the format #,event name,sid (ie. 1,http-proxy,32)\n";

print "Enter Plugin ID (>9100): ";
my $strplug = <STDIN>; # I moved chomp to a new line to make it more readable
chomp $strplug; # Get rid of newline character at the end
print "Enter Plugin Name All Lower Case No Spaces (cisco_pix): ";
my $strplugNm = <STDIN>; # I moved chomp to a new line to make it more readable
chomp $strplugNm; # Get rid of newline character at the end
print "Enter Vendor Name: ";
my $strVend = <STDIN>; # I moved chomp to a new line to make it more readable
chomp $strVend; # Get rid of newline character at the end
print "Enter Model Name: ";
my $strMod = <STDIN>; # I moved chomp to a new line to make it more readable
chomp $strMod; # Get rid of newline character at the end
print "Enter Version: ";
my $strVer = <STDIN>; # I moved chomp to a new line to make it more readable
chomp $strVer; # Get rid of newline character at the end
print "10=firewall,22=proxy,24=router/switch,3=Anti Virus,13=IDS,14=IPS,16=mail server,8=database,28=vulnerability scanner,29=web server,30=WiFi IDS,11=honeypot,20=server,15=SPAM/mail,27=VPN ,6=DHCP \x0D\x0A Enter Device ID: ";
my $strDevId = <STDIN>; # I moved chomp to a new line to make it more readable
chomp $strDevId; # Get rid of newline character at the end
 

#Default values for rel and pri
my $default_r = 3;
my $default_p = 1;

#filename
my $file = 'sid.txt';

my @text = read_file($file);

#Feel free to change these...
my %pri_hash = ( 'Severe' => 5, 'Informational' => 1, 'Warning' => 3);

$datestring = localtime();

#Print Header
print "DELETE FROM plugin WHERE id = '$strplug';\n";
print "DELETE FROM plugin_sid where plugin_id = '$strplug';\n";
print "DELETE FROM software_cpe where plugin = '$strplugNm:$strplug';\n";
print "INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:$strVend:$strMod:$strVer','$strMod','$strVer','','$strVend','$strplugNm:$strplug');\n";
print "INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES ('$strplug',1,'$strMod','$strVer','$strDevId','$strVend');\n";

my $translate_table = "[translation]\n";
foreach my $line (@text) {
	chomp($line);
	@fields = split /,/,$line;
	$message = $fields[1]; $code = $fields[2]; $pri = $fields[3];
	if (defined $pri_hash{$pri}) {
		$priority = $pri_hash{$pri};
	} else {
		$priority = $default_p;
	}
	$message =~ s/\.//g;
	$message =~ s/^\ //;
	$message2 = $strVend . '-' . $strMod . ': ' . $message;
	$sid = hex($code);
	printf $sql_out, $sid, $priority, $message;
	
	#This plugin needs a translate table, going to do that in this loop
	$translate_table .= "$message=$code\n";
	$sido .= "INSERT INTO `plugin_sid` (`plugin_id`,`sid`,`reliability`, `priority`, `name`) VALUES ($strplug, $code, $default_r, 1, '$message2');\n";
}
#print $translate_table;


print $sido;

sub make_plugin () {
	print <<EOF
# Alienvault plugin
# Author: hovdb
# Plugin $strplugNm id:$strplug version: 0.01
# Accepted products:
# $strVend - $strMod $strVer
# Last modification: $datestring


[DEFAULT]
plugin_id=$strplug
[config]
type=detector
enable=yes
source=log
location=/var/log/$strplugNm.log
# create log file if it does not exists,
# otherwise stop processing this plugin
create_file=false
process=
start=yes   ; launch plugin process when agent starts
stop=no     ; shutdown plugin process when agent stops
restart=yes  ; restart plugin process after each interval
restart_interval=180
startup=
shutdown=


$translate_table;

EOF
}
make_plugin();