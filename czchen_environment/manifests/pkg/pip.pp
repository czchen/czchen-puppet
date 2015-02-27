# FIXME: Use https://forge.puppetlabs.com/stankevich/python instead
define pip($ensure = installed) {
    case $ensure {
        installed: {
            exec { "pip install --user --force-reinstall ${name}":
                path        => $czchen_environment::params::user::path,
                user        => $czchen_environment::params::user::account,
                group       => $czchen_environment::params::user::group,
                umask       => $czchen_environment::params::user::umask,
                environment => [
                    "HOME=${czchen_environment::params::user::home}",
                ],
                unless      => "pip list --local|grep  '^${name} ('",
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
            }
        }
    }
}

class czchen_environment::pkg::pip {
    # FIXME: Different distro may have different package name for pip
    $pkg_pip = 'python-pip'

    package {$pkg_pip:
        ensure => installed,
    }

    # FIXME: Do it after user[$czchen_environment::params::user::account]
    pip { $czchen_environment::params::pkg::pip:
        ensure => installed
    }
}
