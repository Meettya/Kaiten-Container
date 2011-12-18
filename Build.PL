use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Kaiten::Container',
    license             => 'perl',
    dist_author         => q{Meettya <meettya@cpan.org>},
    dist_version_from   => 'lib/Kaiten/Container.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'perl' => 5.006,
    },
    add_to_cleanup      => [ 'Kaiten-Container-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
