use strict;
use warnings;
use Test::More;

use File::Spec;
use File::Basename;
BEGIN {
    @ARGV = File::Spec->catfile(dirname(__FILE__), 'data', '01.json')
}

use ARGV::JSON;

note explain \@ARGV::JSON::Data;

is_deeply scalar <>, {
    foo => [1,2,3],
    bar => { baz => undef },
};

note explain \@ARGV::JSON::Data;

is_deeply [ <> ], [
    [ 'x', 'y', 'z' ],
    {},
];

note explain \@ARGV::JSON::Data;

is scalar <>, undef;

done_testing;
