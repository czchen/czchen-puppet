class czchen_environment::user {
    user { $czchen_environment::params::user::account:
        groups => [
            'sudo',
            'libvirt',
        ],

        require => [
            Package['sudo'],
            Package['virt-manager'],
        ],
    }
}
