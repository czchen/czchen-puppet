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

    apt::source { 'experimental-debug':
        location => 'http://debug.mirrors.debian.org/debian-debug/',
        release  => 'experimental-debug',
        repos    => 'main contrib non-free',
        include  => {
            deb => true,
            src => true,
        },
    }

    apt::source { 'unstable':
        comment  => 'http://httpredir.debian.org/',
        location => 'http://httpredir.debian.org/debian/',
        release  => 'unstable',
        repos    => 'main contrib non-free',
        include  => {
            deb => true,
            src => true,
        },
    }

    apt::source { 'unstable-debug':
        location => 'http://debug.mirrors.debian.org/debian-debug/',
        release  => 'unstable-debug',
        repos    => 'main contrib non-free',
        include  => {
            deb => true,
            src => true,
        },
    }
}
