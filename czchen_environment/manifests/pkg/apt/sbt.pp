class czchen_environment::pkg::apt::sbt {
    apt::source { 'sbt':
        comment  => 'See http://www.scala-sbt.org/download.html',
        location => 'https://dl.bintray.com/sbt/debian',
        release  => '',
        repos    => '/',
        include  => {
            deb => true,
            src => false,
        },

        require  => Apt::Key[sbt]
    }

    apt::key { 'sbt':
        key => '99E82A75642AC823',
    }
}
