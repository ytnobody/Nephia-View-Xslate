# NAME

Nephia::View::Xslate - Template for Nephia

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

Nephia::View::Xslate is view class for Nephia. It provides template feature as Text::Xslate.

# USING SETUP

    nephia-setup Your::AppName --flavor View::Xslate

# LICENSE

Copyright (C) ytnobody / satoshi azuma.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
            

# AUTHOR

ytnobody / satoshi azuma <ytnobody@gmail.com>

# SEE ALSO

Text::Xslate
