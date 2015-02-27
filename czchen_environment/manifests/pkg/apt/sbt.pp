class czchen_environment::pkg::apt::sbt {
    apt::source { 'sbt':
        comment     => 'See http://www.scala-sbt.org/download.html',
        location    => 'https://dl.bintray.com/sbt/debian',
        release     => '',
        repos       => '/',
        include_src => false,
        include_deb => true,
    }
}
