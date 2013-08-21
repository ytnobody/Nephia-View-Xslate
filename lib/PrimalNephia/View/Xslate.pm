package PrimalNephia::View::Xslate;
use 5.008005;
use strict;
use warnings;
use Text::Xslate;
our $VERSION = 0.06;

sub new {
    my ( $class, %opts ) = @_;
    $opts{path} ||= [ "$FindBin::Bin/view" ];
    return Text::Xslate->new( %opts );
}


1;
__END__

=encoding utf-8

=head1 NAME

PrimalNephia::View::Xslate - Template for PrimalNephia

=head1 SYNOPSIS

    ### in etc/conf/common.pl ...
    +{
        view => {
            class => 'Xslate',
            path  => [ ... ],
            ...
        },
    };

=head1 DESCRIPTION

PrimalNephia::View::Xslate is view class for PrimalNephia. It provides template feature as Text::Xslate.

=head1 USING SETUP

    primalnephia-setup Your::AppName --flavor View::Xslate

=head1 LICENSE

Copyright (C) ytnobody / satoshi azuma.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
            
=head1 AUTHOR

ytnobody / satoshi azuma E<lt>ytnobody@gmail.comE<gt>

=head1 SEE ALSO

Text::Xslate

=cut

