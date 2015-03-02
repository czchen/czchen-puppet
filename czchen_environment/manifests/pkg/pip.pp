# FIXME: Use https://forge.puppetlabs.com/stankevich/python instead
define pip($ensure = installed) {
    case $ensure {
        installed: {
            exec { "pip install --user --force-reinstall --upgrade ${name}":
                path        => $czchen_environment::params::user::path,
                user        => $czchen_environment::params::user::account,
                group       => $czchen_environment::params::user::group,
                umask       => $czchen_environment::params::user::umask,
                environment => [
                    "HOME=${czchen_environment::params::user::home}",
                ],
                unless      => "pip list --local|grep  '^${name} ('",
                require     => Package[$czchen_environment::pkg::pip::tool],
            }
        }

        default: {
            $version = $ensure
            exec { "pip install --user --force-reinstall ${name}==${version}":
                path        => $czchen_environment::params::user::path,
                user        => $czchen_environment::params::user::account,
                group       => $czchen_environment::params::user::group,
                umask       => $czchen_environment::params::user::umask,
                environment => [
                    "HOME=${czchen_environment::params::user::home}",
                ],
                unless      => "pip list --local|grep '^${name} (${version})'",
                require     => Package[$czchen_environment::pkg::pip::tool],
            }
        }
    }
}

class czchen_environment::pkg::pip {
    # FIXME: Different distro may have different package name for pip
    $tool = 'python-pip'

    package {$tool:
        ensure => installed,
    }

    # FIXME: Do it after user[$czchen_environment::params::user::account]
    pip { $czchen_environment::params::pkg::pip:
        ensure => installed
    }
}
