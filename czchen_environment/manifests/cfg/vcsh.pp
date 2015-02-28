define resource_vcsh($url) {
    # FIXME: Run `vcsh pull` after all repositories are set.
    exec { "vcsh ${name}":
        path        => '/bin:/usr/bin',
        user        => $czchen_environment::params::user::account,
        command     => "vcsh clone ${url} ${name}",
        environment => [
            "HOME=${czchen_environment::params::user::home}",
        ],
        onlyif      => "vcsh status ${name} 2>&1|grep 'no repository found for'",
        require     => Package['vcsh'],
    }
}

class czchen_environment::cfg::vcsh {
    create_resources(resource_vcsh, $czchen_environment::params::cfg::vcsh)
}
