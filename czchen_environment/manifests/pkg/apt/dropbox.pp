class czchen_environment::pkg::apt::dropbox {
    apt::source { 'dropbox':
        location    => 'http://linux.dropbox.com/debian',
        release     => 'sid',
        repos       => 'main',
        include_src => false,
        include_deb => true,
    }

    apt::key { 'dropbox':
        key => '0xFC918B335044912E',
    }
}
