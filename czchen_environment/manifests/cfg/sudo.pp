class czchen_environment::cfg::sudo {
    file { '/etc/sudoers.d/umask':
        owner   => 'root',
        group   => 'root',
        mode    => '0400',
        ensure  => file,
        content => "Defaults umask = 0022\nDefaults umask_override\n",
    }
}
