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
        id => 'BFBD0EFF8F181A2A4CAA780F3924B8DF29A8F5EB',
    }
}
