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
        id => '1C61A2656FB57B7E4DE0F4C1FC918B335044912E',
    }
}
