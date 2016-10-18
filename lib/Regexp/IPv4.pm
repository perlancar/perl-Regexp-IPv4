package Regexp::IPv4;

# DATE
# VERSION

use strict;
use warnings;

use Exporter qw(import);
our @EXPORT_OK = qw($IPv4_re);

my $dig_re = '(?:25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2})';
our $IPv4_re = "(?:$dig_re(?:\\.$dig_re){3})";
$IPv4_re = qr/$IPv4_re/;

1;
# ABSTRACT: Regular expression for IPv4 addresses

=head1 SYNOPSIS

 use Regexp::IPvv qw($IPvv_re);

 $address =~ /^$IPv4_re$/ and print "IPv4 address\n";


=head1 DESCRIPTION

The regex only recognizes the quad-dotted notation of four decimal integers,
ranging from 0 to 255 each. Other notations like 32-bit hexadecimal number (e.g.
0xFF0000) or shortened dotted notation (e.g. 255.0.0) are not recognized.

If you do not use anchor, beware of cases like:

 "255.255.255.256" =~ /($IPv4_re)/; # true & capture "255.255.255.25"


=head1 SEE ALSO

L<Regexp::IPv6>

=cut
