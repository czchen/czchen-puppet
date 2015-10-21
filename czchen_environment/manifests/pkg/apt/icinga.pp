class czchen_environment::pkg::apt::icinga {
    apt::source { 'icinga':
        comment     => 'http://packages.icinga.org/debian/',
        location    => 'http://packages.icinga.org/debian',
        release     => 'icinga-unstable',
        repos       => 'main',
        include_src => true,
        include_deb => true,
        require     => Apt::Key[icinga],
    }

    apt::key { 'icinga':
        key        => '0xC6E319C334410682',
        key_source => 'http://packages.icinga.org/icinga.key',
    }
}
