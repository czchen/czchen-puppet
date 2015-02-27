class czchen_environment::pkg::apt::google {
    apt::source { 'google-chrome':
        comment     => 'https://www.google.com.tw/linuxrepositories/',
        location    => 'http://dl.google.com/linux/chrome/deb/',
        release     => 'stable',
        repos       => 'main',
        include_src => false,
        include_deb => true,
    }

    apt::source { 'google-talkplugin':
        comment     => 'https://www.google.com.tw/linuxrepositories/',
        location    => 'http://dl.google.com/linux/talkplugin/deb/',
        release     => 'stable',
        repos       => 'main',
        include_src => false,
        include_deb => true,
    }

    apt::key { 'google':
        key => '0xA040830F7FAC5991',
    }
}
