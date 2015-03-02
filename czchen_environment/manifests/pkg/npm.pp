define npm($ensure = installed) {
    case $ensure {
        installed: {
            exec { "npm install -g --prefix ${czchen_environment::params::user::home}/.local ${name}":
                path        => $czchen_environment::params::user::path,
                user        => $czchen_environment::params::user::account,
                group       => $czchen_environment::params::user::group,
                umask       => $czchen_environment::params::user::umask,
                environment => [
                    "HOME=${czchen_environment::params::user::home}",
                ],
                unless      => "npm list -g ${name}|grep ${name}@",
                require     => Package[$czchen_environment::pkg::npm::tool],
            }
        }

        default: {
            $version = $ensure
            exec { "npm install -g --prefix ${czchen_environment::params::user::home}/.local ${name}@${version}":
                path        => $czchen_environment::params::user::path,
                user        => $czchen_environment::params::user::account,
                group       => $czchen_environment::params::user::group,
                umask       => $czchen_environment::params::user::umask,
                environment => [
                    "HOME=${czchen_environment::params::user::home}",
                ],
                unless      => "npm list -g ${name}|grep ${name}@${version}",
                require     => Package[$czchen_environment::pkg::npm::tool],
            }
        }
    }
}

class czchen_environment::pkg::npm {
    $tool = 'npm'

    package {$tool:
        ensure => installed
    }

    npm { $czchen_environment::params::pkg::npm:
        ensure => installed
    }
}
