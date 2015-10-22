class czchen_environment::pkg::apt::icinga {
    apt::source { 'icinga':
        comment  => 'http://packages.icinga.org/debian/',
        location => 'http://packages.icinga.org/debian',
        release  => 'icinga-unstable',
        repos    => 'main',
        include  => {
            deb => true,
            src => true,
        },
        require  => Apt::Key[icinga],
    }

    apt::key { 'icinga':
        id     => 'F51A91A5EE001AA5D77D53C4C6E319C334410682',
        source => 'http://packages.icinga.org/icinga.key',
    }
}
