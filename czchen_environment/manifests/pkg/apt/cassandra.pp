class czchen_environment::pkg::apt::cassandra {
    apt::source { 'cassandra':
        comment  => 'https://wiki.apache.org/cassandra/DebianPackaging',
        location => 'http://www.apache.org/dist/cassandra/debian',
        release  => '22x',
        repos    => 'main',
        include  => {
            deb => true,
            src => true,
        },
        require  => [
            Apt::Key[F758CE318D77295D],
            Apt::Key[4BD736A82B5C1B00],
            Apt::Key[749D6EEC0353B12C],
        ]
    }

    apt::key { 'F758CE318D77295D':
        id => 'C4965EE9E3015D192CCCF2B6F758CE318D77295D',
    }

    apt::key { '4BD736A82B5C1B00':
        id => '5AED1BF378E9A19DADE1BCB34BD736A82B5C1B00',
    }

    apt::key { '749D6EEC0353B12C':
        id => '514A2AD631A57A16DD0047EC749D6EEC0353B12C',
    }
}
