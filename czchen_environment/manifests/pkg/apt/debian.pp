class czchen_environment::pkg::apt::debian {
    apt::source { 'experimental':
        comment  => 'http://httpredir.debian.org/',
        location => 'http://httpredir.debian.org/debian/',
        release  => 'experimental',
        repos    => 'main contrib non-free',
        include  => {
            deb => true,
            src => true,
        },
    }

    # FIXME: remove duplicated code

    apt::source { 'sid':
        comment  => 'http://httpredir.debian.org/',
        location => 'http://httpredir.debian.org/debian/',
        release  => 'sid',
        repos    => 'main contrib non-free',
        include  => {
            deb => true,
            src => true,
        },
    }
}
