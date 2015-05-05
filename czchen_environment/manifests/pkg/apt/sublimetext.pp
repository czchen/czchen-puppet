class czchen_environment::pkg::apt::sublimetext {
    include czchen_environment::pkg::apt::webupd8team

    apt::source { 'sublimetext':
        comment     => 'https://launchpad.net/~webupd8team/+archive/ubuntu/sublime-text-3',
        location    => 'http://ppa.launchpad.net/webupd8team/sublime-text-3/ubuntu',
        release     => $czchen_environment::pkg::apt::ppa_release,
        repos       => 'main',
        include_src => true,
        include_deb => true,
        require     => Apt::key[webupd8team]
    }
}
