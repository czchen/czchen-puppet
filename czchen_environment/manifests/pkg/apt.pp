class czchen_environment::pkg::apt {
    case $operatingsystem {
        debian: {
            include czchen_environment::pkg::apt::debian

            include czchen_environment::pkg::apt::dropbox
            include czchen_environment::pkg::apt::sbt

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
