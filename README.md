# NAME

PrimalNephia::View::Xslate - Template for PrimalNephia

# SYNOPSIS

    ### in etc/conf/common.pl ...
    +{
        view => {
            class => 'Xslate',
            path  => [ ... ],
            ...
        },
    };

# DESCRIPTION

PrimalNephia::View::Xslate is view class for PrimalNephia. It provides template feature as Text::Xslate.

# USING SETUP

    primalnephia-setup Your::AppName --flavor View::Xslate

# LICENSE

Copyright (C) ytnobody / satoshi azuma.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
            

# AUTHOR

ytnobody / satoshi azuma <ytnobody@gmail.com>

# SEE ALSO

Text::Xslate
