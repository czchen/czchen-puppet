class czchen_environment::pkg::apt::google {
    apt::source { 'google-chrome':
        comment      => 'https://www.google.com.tw/linuxrepositories/',
        architecture => 'amd64',
        location     => 'http://dl.google.com/linux/chrome/deb/',
        release      => 'stable',
        repos        => 'main',
        include      => {
            deb => true,
            src => false,
        },
        require      => Apt::Key[google],
    }

    apt::source { 'google-talkplugin':
        comment  => 'https://www.google.com.tw/linuxrepositories/',
        location => 'http://dl.google.com/linux/talkplugin/deb/',
        release  => 'stable',
        repos    => 'main',
        include  => {
            deb => true,
            src => false,
        },
        require  => Apt::Key[google],
    }

    apt::key { 'google':
        id => '4CCA1EAF950CEE4AB83976DCA040830F7FAC5991',
    }
}
