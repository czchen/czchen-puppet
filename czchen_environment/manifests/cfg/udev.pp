class czchen_environment::cfg::udev {
    file { '/etc/udev/rules.d/99-android.rules':
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        ensure  => file,
        content => 'SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", TAG+="uaccess"',
    }
}
