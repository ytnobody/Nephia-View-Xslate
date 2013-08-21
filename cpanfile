requires 'perl'                 , '5.008001';
requires 'PrimalNephia'               , '0';
requires 'Text::Xslate'         , '0';
requires 'HTTP::Request::Common', '0';

on 'test' => sub {
    requires 'Test::More', '0.98';
};

