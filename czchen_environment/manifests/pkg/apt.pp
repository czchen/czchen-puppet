class czchen_environment::pkg::apt {
    case $operatingsystem {
        debian: {
            $ppa_release = 'utopic'

            include czchen_environment::pkg::apt::debian

            include czchen_environment::pkg::apt::atom
            include czchen_environment::pkg::apt::charlesproxy
            include czchen_environment::pkg::apt::chewing
            include czchen_environment::pkg::apt::dropbox
            include czchen_environment::pkg::apt::fingerprint
            include czchen_environment::pkg::apt::google
            include czchen_environment::pkg::apt::heroku
            include czchen_environment::pkg::apt::sbt
            include czchen_environment::pkg::apt::sublimetext

            package { $czchen_environment::params::pkg::apt:
                ensure => installed,
            }

            package { $czchen_environment::params::pkg::apt_unauthenticated:
                ensure          => installed,
                install_options => '--allow-unauthenticated'
            }
        }
    }
}
