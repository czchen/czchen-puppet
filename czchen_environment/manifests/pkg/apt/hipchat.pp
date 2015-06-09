class czchen_environment::pkg::apt::hipchat {
    apt::source { 'hipchat':
        comment     => 'https://www.hipchat.com/downloads#linux-install',
        location    => 'http://downloads.hipchat.com/linux/apt',
        release     => 'stable',
        repos       => 'main',
        include_src => false,
        include_deb => true,
        require     => Apt::Key[hipchat]
    }

    apt::key { 'hipchat':
        key => 'AAD4AA21729B5780',
    }
}
