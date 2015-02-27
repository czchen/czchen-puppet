class czchen_environment::pkg::apt::debian {
    apt::source { 'unstable':
        comment     => 'http://http.debian.net/',
        location    => 'http://http.debian.net/debian/',
        release     => 'unstable',
        repos       => 'main contrib non-free',
        include_src => true,
        include_deb => true,
    }

    apt::source { 'experimental':
        comment     => 'http://http.debian.net/',
        location    => 'http://http.debian.net/debian/',
        release     => 'experimental',
        repos       => 'main contrib non-free',
        include_src => true,
        include_deb => true,
    }
}
