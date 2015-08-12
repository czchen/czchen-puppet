class czchen_environment::pkg::apt::sbt {
    apt::source { 'sbt':
        comment     => 'See http://www.scala-sbt.org/download.html',
        location    => 'https://dl.bintray.com/sbt/debian',
        release     => '',
        repos       => '/',
        include_src => false,
        include_deb => true,

        require     => Apt::Key[sbt]
    }

    apt::key { 'sbt':
        key => '99E82A75642AC823',
    }
}
