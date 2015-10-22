class czchen_environment::pkg::apt::heroku {
    apt::source { 'heroku':
        comment  => 'https://toolbelt.heroku.com/debian',
        location => 'http://toolbelt.heroku.com/ubuntu',
        release  => '',
        repos    => './',
        include  => {
            deb => true,
            src => false,
        },
    }

    apt::key { 'heroku':
        id     => '150C6249147592DE6D91981CC927EBE00F1B0520',
        source => 'https://toolbelt.heroku.com/apt/release.key',
    }
}
