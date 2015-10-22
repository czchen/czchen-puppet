class czchen_environment::pkg::apt::hipchat {
    apt::source { 'hipchat':
        comment  => 'https://www.hipchat.com/downloads#linux-install',
        location => 'http://downloads.hipchat.com/linux/apt',
        release  => 'stable',
        repos    => 'main',
        include  => {
            deb => true,
            src => false,
        },
        require     => Apt::Key[hipchat]
    }

    apt::key { 'hipchat':
        id => '69F57C04EA38EEE7A47E9BCCAAD4AA21729B5780',
    }
}
