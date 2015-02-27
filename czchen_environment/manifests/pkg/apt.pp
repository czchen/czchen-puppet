class czchen_environment::pkg::apt {
    $pkg_debian = [
        # apparmor
        'apparmor',
        'apparmor-notify',
        'apparmor-utils',

        # debian
        'apt-file',
        'apt-listchanges',
        'apt-transport-https',
        'autopkgtest',
        'debhelper',
        'debian-goodies',
        'devscripts',
        'dh-autoreconf',
        'dh-make',
        'dput-ng',
        'git-buildpackage',
        'how-can-i-help',
        'quilt',
        'ubuntu-dev-tools',

        # development
        'autoconf',
        'automake',
        'blktrace',
        'build-essential',
        'cabal-install',
        'cmake',
        'docker.io',
        'dstat',
        'exuberant-ctags',
        'freemind',
        'ghc',
        'git',
        'glibc-doc',
        'glibc-doc-reference',
        'libghc-hspec-dev',
        'libtool',
        'libvirt-bin',
        'lxc',
        'manpages',
        'manpages-dev',
        'manpages-posix',
        'manpages-posix-dev',
        'net-tools',
        'pinfo',
        'sysdig',
        'sysstat',
        'texinfo',
        'tig',
        'tiptop',
        'valgrind',
        'virt-manager',

        # desktop
        'keepassx',
        'playonlinux',

        # fonts
        'font-manager',
        'fonts-droid',
        'fonts-noto',

        # gpg key
        'gnupg2',
        'signing-party',

        # input method
        'ibus-chewing',

        # miscellaneous
        'autojump',
        'gufw',
        'mutt-patched',
        'p7zip-full',
        'puppet',
        'sudo',
        'tmux',
        'tree',
        'vim-gnome',
        'zsh',
        'zsh-antigen',
    ]

    $pkg_debian_unauthenticated = [
        'sbt',
    ]

    case $operatingsystem {
        debian: {
            include czchen_environment::pkg::apt::debian

            include czchen_environment::pkg::apt::sbt

            package { $pkg_debian:
                ensure => installed,
            }

            package { $pkg_debian_unauthenticated:
                ensure          => installed,
                install_options => '--allow-unauthenticated'
            }
        }
    }
}
