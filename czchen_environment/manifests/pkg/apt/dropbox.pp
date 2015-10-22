class czchen_environment::pkg::apt::dropbox {
    apt::source { 'dropbox':
        location => 'http://linux.dropbox.com/debian',
        release  => 'sid',
        repos    => 'main',
        include  => {
            deb => true,
            src => true,
        },
    }

    apt::key { 'dropbox':
        key => '0xFC918B335044912E',
    }
}
