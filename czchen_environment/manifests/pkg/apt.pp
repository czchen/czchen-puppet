class czchen_environment::pkg::apt {
    case $operatingsystem {
        debian: {
            $ppa_release = 'utopic'

            include czchen_environment::pkg::apt::debian

            include czchen_environment::pkg::apt::atom
            include czchen_environment::pkg::apt::charlesproxy
            # include czchen_environment::pkg::apt::chewing
            include czchen_environment::pkg::apt::dropbox
            include czchen_environment::pkg::apt::fingerprint
            include czchen_environment::pkg::apt::firefox
            include czchen_environment::pkg::apt::google
            include czchen_environment::pkg::apt::grafana
            include czchen_environment::pkg::apt::heroku
            include czchen_environment::pkg::apt::hipchat
            include czchen_environment::pkg::apt::mongodb
            include czchen_environment::pkg::apt::sbt
            include czchen_environment::pkg::apt::simplexsolutionsinc
            include czchen_environment::pkg::apt::sublimetext
            include czchen_environment::pkg::apt::syncthing

            package { $czchen_environment::params::pkg::apt:
                ensure => installed,
            }
        }
    }
}
