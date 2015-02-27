class czchen_environment::user {
    user { $czchen_environment::params::user:
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
