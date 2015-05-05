class czchen_environment::pkg::apt::atom {
    include czchen_environment::pkg::apt::webupd8team

    apt::source { 'atom':
        comment     => 'https://launchpad.net/~webupd8team/+archive/ubuntu/atom',
        location    => 'http://ppa.launchpad.net/webupd8team/atom/ubuntu',
        release     => $czchen_environment::pkg::apt::ppa_release,
        repos       => 'main',
        include_src => true,
        include_deb => true,
        require     => Apt::key[webupd8team]
    }
}
