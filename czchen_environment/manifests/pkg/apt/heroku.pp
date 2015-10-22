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
        key        => '0xC927EBE00F1B0520',
        key_source => 'https://toolbelt.heroku.com/apt/release.key',
    }
}
