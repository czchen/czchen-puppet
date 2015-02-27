class czchen_environment::pkg::apt::heroku {
    apt::source { 'heroku':
        comment     => 'https://toolbelt.heroku.com/debian',
        location    => 'http://toolbelt.heroku.com/ubuntu',
        release     => '',
        repos       => './',
        include_src => false,
        include_deb => true,
    }

    apt_key { 'heroku':
        ensure => 'present',
        id     => '0xC927EBE00F1B0520',
    }
}
