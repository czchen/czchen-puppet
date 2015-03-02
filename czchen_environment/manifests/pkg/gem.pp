define gem($ensure = installed) {
    case $ensure {
        installed: {
            exec { "gem install --user-install ${name}":
                path        => $czchen_environment::params::user::path,
                user        => $czchen_environment::params::user::account,
                group       => $czchen_environment::params::user::group,
                umask       => $czchen_environment::params::user::umask,
                environment => [
                    "HOME=${czchen_environment::params::user::home}",
                ],
                unless      => "gem list --local|grep  '${name} ('",
                require     => Package[$czchen_environment::pkg::gem::tool],
            }
        }

        default: {
            $version = $ensure
            exec { "gem install --user-install ${name} --version ${version}":
                path        => $czchen_environment::params::user::path,
                user        => $czchen_environment::params::user::account,
                group       => $czchen_environment::params::user::group,
                umask       => $czchen_environment::params::user::umask,
                environment => [
                    "HOME=${czchen_environment::params::user::home}",
                ],
                unless      => "gem list --local|grep  '${name} (${version})'",
                require     => Package[$czchen_environment::pkg::gem::tool],
            }
        }
    }
}

class czchen_environment::pkg::gem {
    $tool = 'ruby'

    package {$tool:
        ensure => installed
    }

    gem {$czchen_environment::params::pkg::gem:
        ensure => installed
    }
}
