package PrimalNephia::Setup::View::Xslate;
use strict;
use warnings;
use File::Spec;

sub on_load {
    my ($class, $setup) = @_;
    my $meta = $setup->meta_template;
    $meta->replace_table([]);
    $meta->tag('<: ... :>');
    $meta->arrow('.');
    $meta->argument('$...');
    return $setup;
}

sub index_template_file {
    my $self = shift;
    my $body = $self->templates->{index_template_file};
    my $file = File::Spec->catfile($self->approot, qw/view index.tx/);
    $self->spew_as_template($file, $body);
}

sub required_modules {
    'PrimalNephia::View::Xslate' => '0',
}

1;

__DATA__

app_class_file
---
package $appname;
use strict;
use warnings;
use PrimalNephia;

path '/' => sub {
    my $req = shift;
    return {
        template => 'index.tx',
        title => '$appname',
        envname  => config->{envname},
        apppath  => 'lib/' . __PACKAGE__ .'.pm',
    };
};

1;

:::head1 NAME

$appname - Web Application

:::head1 SYNOPSIS

  $ plackup

:::head1 DESCRIPTION

$appname is web application based PrimalNephia.

:::head1 AUTHOR

clever guy

:::head1 SEE ALSO

PrimalNephia

PrimalNephia::View::Xslate

:::head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

:::cut
===

common_conf
---
+{
    appname => $appname,
    view => {
        class => 'Xslate',
    },
};
===
