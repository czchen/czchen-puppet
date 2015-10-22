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
        id     => '37C84554E7E0A261E4F76E1ED26E6ED000654A3E',
        source => 'https://syncthing.net/release-key.txt',
    }
}
