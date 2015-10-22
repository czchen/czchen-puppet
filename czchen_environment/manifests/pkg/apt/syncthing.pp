class czchen_environment::pkg::apt::syncthing {
    apt::source { 'syncthing':
        comment  => 'http://apt.syncthing.net/',
        location => 'http://apt.syncthing.net/',
        release  => 'syncthing',
        repos    => 'release',
        include  => {
            deb => true,
            src => false,
        },
        require  => Apt::Key[syncthing],
    }

    apt::key { 'syncthing':
        key        => '0xD26E6ED000654A3E',
        key_source => 'https://syncthing.net/release-key.txt',
    }
}
