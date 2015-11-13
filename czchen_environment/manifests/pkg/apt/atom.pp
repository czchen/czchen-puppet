class czchen_environment::pkg::apt::atom {
    include czchen_environment::pkg::apt::webupd8team

    apt::source { 'atom':
        comment  => 'https://launchpad.net/~webupd8team/+archive/ubuntu/atom',
        location => 'http://ppa.launchpad.net/webupd8team/atom/ubuntu',
        release  => 'xenial',
        repos    => 'main',
        include  => {
            deb => true,
            src => true,
        },
        require  => Apt::Key[webupd8team]
    }
}
