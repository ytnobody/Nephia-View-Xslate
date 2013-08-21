package PrimalNephia::TestApp;
use strict;
use warnings;
use PrimalNephia;
use utf8;

our $VERSION = 0.06;

my $item = 'ひのきのぼう';

path '/' => sub {
    return {
        template => 'index.tx',
        title => 'PrimalNephia::TestApp',
    };
};

path '/json' => sub {
    my $query = req->param('q');
    return $query ? 
        { query => $query, message => 'Query OK' } :
        { message => 'Please input a query' }
    ;
};

path '/direct/js' => sub {
    return res {
        content_type( 'text/javascript' );
        body('console.log("foobar");');
    };
};

path '/direct/array' => sub {
    res { ( 200, [], ['foobar'] ) };
};

path '/direct/status_code' => sub {
    res { 302 };
};

path '/configtest' => sub {
    return config;
};

path '/nihongo' => sub {
    return {
        template => 'index.tx',
        title => '日本語であそぼ',
    };
};

get '/item' => sub {
    return {
        message => "$item　が　ある。",
    };
};

post '/item' => sub {
    return {
        message => "$item　で　かべをたたいた",
    };
};

put '/item' => sub {
    return {
        message => "$item　を　もどした",
    };
};

del '/item' => sub {
    return {
        message => "$item　を　すてた",
    };
};

post '/item/{newitem:.+}' => sub {
    $item = param()->{'newitem'};
    return {
        message => "$item　を　つかう",
    };
};

1;
__END__

=head1 NAME

PrimalNephia-TestApp - Test Web Application for PrimalNephia

=head1 SYNOPSIS

  $ plackup

=head1 DESCRIPTION

PrimalNephia::TestApp is web application based PrimalNephia.

=head1 AUTHOR

ytnobody

=head1 SEE ALSO

PrimalNephia

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
