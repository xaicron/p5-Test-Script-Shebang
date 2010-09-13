use strict;
use warnings;
use Test::More;

eval q{ use Test::Spelling; !system qw(which spell) or die };
plan skip_all => "Test::Spelling and spell(1) are not available." if $@;

add_stopwords(map { split /[\s\:\-]/ } <DATA>);
$ENV{LANG} = 'C';
all_pod_files_spelling_ok('lib');

__DATA__
Test::Script::Shebang

# personal section
xaicron
xaicron {at} cpan.org
