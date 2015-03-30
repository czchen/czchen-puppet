class czchen_environment::params::pkg {
    $apt = [
        # apparmor
        'apparmor',
        'apparmor-notify',
        'apparmor-utils',

        # debian
        'apt-file',
        'apt-listchanges',
        'apt-transport-https',
        'autopkgtest',
        'check-all-the-things',
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
        'charles-proxy',
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
        'sbuild',
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
        'dropbox',
        'google-chrome-stable',
        'google-talkplugin',
        'gufw',
        'mutt-patched',
        'pass',
        'p7zip-full',
        'puppet',
        'sudo',
        'taskwarrior',
        'tmux',
        'tree',
        'vcsh',
        'vim-gnome',
        'zsh',
        'zsh-antigen',
    ]

    $apt_unauthenticated = [
        'sbt',
    ]

    $gem = [
        'puppet',
        'puppet-lint',
        'tmuxinator',
    ]

    $npm = [
        'fuck-you',
        'LiveScript',
        'n',
        'nsp',
        'ydict.js',
    ]

    $pip = [
        'goobook',
        'virtualenvwrapper',
    ]
}
