class czchen_environment::pkg::apt::google {
    apt::source { 'google-chrome':
        location    => 'http://dl.google.com/linux/chrome/deb/',
        release     => 'stable',
        repos       => 'main',
        include_src => false,
        include_deb => true,
    }

    apt::source { 'google-talkplugin':
        location    => 'http://dl.google.com/linux/talkplugin/deb/',
        release     => 'stable',
        repos       => 'main',
        include_src => false,
        include_deb => true,
    }

    apt_key { 'google':
        ensure => 'present',
        id     => '0xA040830F7FAC5991',
    }
}
