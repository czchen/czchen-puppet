define resource_yadm($url) {
    exec { "yadm clone":
        path        => '/bin:/usr/bin',
        user        => $czchen_environment::params::user::account,
        command     => "yadm clone ${url}",
        environment => [
            "HOME=${czchen_environment::params::user::home}",
        ],
        unless      => "yadm status",
        require     => Package['yadm'],
    }

    exec { "yadm pull":
        path        => '/bin:/usr/bin',
        user        => $czchen_environment::params::user::account,
        command     => "vcsh pull",
        environment => [
            "HOME=${czchen_environment::params::user::home}",
        ],
        onlyif      => "yadm status",
        require     => Package['yadm'],
    }
}

class czchen_environment::cfg::yadm {
    create_resources(resource_yadm, $czchen_environment::params::cfg::yadm)
}
