class czchen_environment::pkg::apt::chewing {
    apt::source { 'chewing':
        comment  => 'https://launchpad.net/~chewing/+archive/ubuntu/chewing',
        location => 'http://ppa.launchpad.net/chewing/chewing/ubuntu',
        release  => $czchen_environment::pkg::apt::ppa_release,
        repos    => 'main',
        include  => {
            deb => true,
            src => true,
        },
    }

    apt::key { 'chewing':
        key => '0x3924B8DF29A8F5EB',
    }
}
