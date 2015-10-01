class czchen_environment::cfg::sysrq {
    file { '/etc/sysctl.d/local.conf':
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        ensure  => file,
        content => "kernel.sysrq = 1\n",
    }
}
