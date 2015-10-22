class czchen_environment::pkg::apt::charlesproxy {
    apt::source { 'charlesproxy':
        comment  => 'http://www.charlesproxy.com/documentation/installation/apt-repository/',
        location => 'http://www.charlesproxy.com/packages/apt/',
        release  => 'charles-proxy',
        repos    => 'main',
        include  => {
            deb => true,
            src => false,
        },
        require  => Apt::Key[charlesproxy],
    }

    apt::key { 'charlesproxy':
        id     => '29A78E603B29AC9A889235E6500CCEC520E0B5BF',
        source => 'http://www.charlesproxy.com/packages/apt/PublicKey',
    }
}
