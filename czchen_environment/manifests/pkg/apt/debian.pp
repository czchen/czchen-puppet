class czchen_environment::pkg::apt::debian {
    apt::source { 'experimental':
        comment     => 'http://http.debian.net/',
        location    => 'http://http.debian.net/debian/',
        release     => 'experimental',
        repos       => 'main',
        include_src => true,
        include_deb => true,
    }

    apt::source { 'unstable':
        comment     => 'http://http.debian.net/',
        location    => 'http://http.debian.net/debian/',
        release     => 'unstable',
        repos       => 'main contrib non-free',
        include_src => true,
        include_deb => true,
    }

    apt::source { 'testing':
        comment     => 'http://http.debian.net/',
        location    => 'http://http.debian.net/debian/',
        release     => 'testing',
        repos       => 'main contrib non-free',
        include_src => true,
        include_deb => true,
    }
}
