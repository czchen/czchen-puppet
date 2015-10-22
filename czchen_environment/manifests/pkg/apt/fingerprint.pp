class czchen_environment::pkg::apt::fingerprint {
    apt::source { 'fingerprint':
        comment  => 'https://launchpad.net/~fingerprint/+archive/ubuntu/fingerprint-gui',
        location => 'http://ppa.launchpad.net/fingerprint/fingerprint-gui/ubuntu',
        release  => $czchen_environment::pkg::apt::ppa_release,
        repos    => 'main',
        include  => {
            deb => true,
            src => true,
        },

        require     => Apt::Key[fingerprint]
    }

    apt::key { 'fingerprint':
        key => '0xEFD5FA852F20733F',
    }
}
