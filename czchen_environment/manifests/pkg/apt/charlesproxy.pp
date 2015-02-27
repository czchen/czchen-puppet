class czchen_environment::pkg::apt::charlesproxy {
    apt::source { 'charlesproxy':
        comment => 'http://www.charlesproxy.com/documentation/installation/apt-repository/',
        location    => 'http://www.charlesproxy.com/packages/apt/',
        release     => 'charles-proxy',
        repos       => 'main',
        include_src => false,
        include_deb => true,
    }

    apt_key { 'charlesproxy':
        ensure => 'present',
        id     => '0x500CCEC520E0B5BF',
    }
}
