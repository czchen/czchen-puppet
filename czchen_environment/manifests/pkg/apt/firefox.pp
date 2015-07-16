class czchen_environment::pkg::apt::firefox {
    apt::source { 'firefox':
        comment     => 'http://mozilla.debian.net/',
        location    => 'http://http.debian.net/debian',
        release     => 'experimental',
        repos       => 'main',
        include_src => true,
        include_deb => false,
    }
}
