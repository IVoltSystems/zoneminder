package ONVIF::Device::Types::VideoEncoderConfiguration;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(ONVIF::Device::Types::ConfigurationEntity);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Name_of :ATTR(:get<Name>);
my %UseCount_of :ATTR(:get<UseCount>);
my %Encoding_of :ATTR(:get<Encoding>);
my %Resolution_of :ATTR(:get<Resolution>);
my %Quality_of :ATTR(:get<Quality>);
my %RateControl_of :ATTR(:get<RateControl>);
my %MPEG4_of :ATTR(:get<MPEG4>);
my %H264_of :ATTR(:get<H264>);
my %Multicast_of :ATTR(:get<Multicast>);
my %SessionTimeout_of :ATTR(:get<SessionTimeout>);

__PACKAGE__->_factory(
    [ qw(        Name
        UseCount
        Encoding
        Resolution
        Quality
        RateControl
        MPEG4
        H264
        Multicast
        SessionTimeout

    ) ],
    {
        'Name' => \%Name_of,
        'UseCount' => \%UseCount_of,
        'Encoding' => \%Encoding_of,
        'Resolution' => \%Resolution_of,
        'Quality' => \%Quality_of,
        'RateControl' => \%RateControl_of,
        'MPEG4' => \%MPEG4_of,
        'H264' => \%H264_of,
        'Multicast' => \%Multicast_of,
        'SessionTimeout' => \%SessionTimeout_of,
    },
    {
        'Name' => 'ONVIF::Device::Types::Name',
        'UseCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'Encoding' => 'ONVIF::Device::Types::VideoEncoding',
        'Resolution' => 'ONVIF::Device::Types::VideoResolution',
        'Quality' => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        'RateControl' => 'ONVIF::Device::Types::VideoRateControl',
        'MPEG4' => 'ONVIF::Device::Types::Mpeg4Configuration',
        'H264' => 'ONVIF::Device::Types::H264Configuration',
        'Multicast' => 'ONVIF::Device::Types::MulticastConfiguration',
        'SessionTimeout' => 'SOAP::WSDL::XSD::Typelib::Builtin::duration',
    },
    {

        'Name' => 'Name',
        'UseCount' => 'UseCount',
        'Encoding' => 'Encoding',
        'Resolution' => 'Resolution',
        'Quality' => 'Quality',
        'RateControl' => 'RateControl',
        'MPEG4' => 'MPEG4',
        'H264' => 'H264',
        'Multicast' => 'Multicast',
        'SessionTimeout' => 'SessionTimeout',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::VideoEncoderConfiguration

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
VideoEncoderConfiguration from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Encoding


=item * Resolution


=item * Quality


=item * RateControl


=item * MPEG4


=item * H264


=item * Multicast


=item * SessionTimeout




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::VideoEncoderConfiguration
   Encoding => $some_value, # VideoEncoding
   Resolution =>  { # ONVIF::Device::Types::VideoResolution
     Width =>  $some_value, # int
     Height =>  $some_value, # int
   },
   Quality =>  $some_value, # float
   RateControl =>  { # ONVIF::Device::Types::VideoRateControl
     FrameRateLimit =>  $some_value, # int
     EncodingInterval =>  $some_value, # int
     BitrateLimit =>  $some_value, # int
   },
   MPEG4 =>  { # ONVIF::Device::Types::Mpeg4Configuration
     GovLength =>  $some_value, # int
     Mpeg4Profile => $some_value, # Mpeg4Profile
   },
   H264 =>  { # ONVIF::Device::Types::H264Configuration
     GovLength =>  $some_value, # int
     H264Profile => $some_value, # H264Profile
   },
   Multicast =>  { # ONVIF::Device::Types::MulticastConfiguration
     Address =>  { # ONVIF::Device::Types::IPAddress
       Type => $some_value, # IPType
       IPv4Address => $some_value, # IPv4Address
       IPv6Address => $some_value, # IPv6Address
     },
     Port =>  $some_value, # int
     TTL =>  $some_value, # int
     AutoStart =>  $some_value, # boolean
   },
   SessionTimeout =>  $some_value, # duration
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

