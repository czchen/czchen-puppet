class czchen_environment::pkg::apt::grafana {
    include czchen_environment::pkg::apt::packagecloud

    apt::source { 'grafana':
        comment  => 'http://docs.grafana.org/installation/debian/',
        location => 'https://packagecloud.io/grafana/testing/debian',
        release  => 'wheezy',
        repos    => 'main',
        include  => {
            deb => true,
            src => false,
        },
        require     => Apt::Key[packagecloud]
    }
}
