class czchen_environment::pkg::apt::debian {
    apt::source { 'unstable':
        comment     => 'Debian unstable',
        location    => 'http://http.debian.net/debian/',
        release     => 'unstable',
        repos       => 'main contrib non-free',
        include_src => true,
        include_deb => true,
    }

    apt::source { 'experimental':
        comment     => 'Debian experimental',
        location    => 'http://http.debian.net/debian/',
        release     => 'experimental',
        repos       => 'main contrib non-free',
        include_src => true,
        include_deb => true,
    }
}
