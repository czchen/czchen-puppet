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
        'ben',
        'check-all-the-things',
        'cme',
        'debdelta',
        'debhelper',
        'debian-goodies',
        'debmake',
        'devscripts',
        'dh-autoreconf',
        'dh-make',
        'dput-ng',
        'git-buildpackage',
        'how-can-i-help',
        'quilt',
        'ubuntu-dev-tools',

        # development
        'afl',
        'atom',
        'autoconf',
        'automake',
        'blktrace',
        'build-essential',
        'cabal-install',
        'charles-proxy',
        'cmake',
        # 'docker.io',
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
        'sbt',
        'sbuild',
        'sublime-text-installer',
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
        'goobook',
        'google-chrome-stable',
        'google-talkplugin',
        'gufw',
        'mutt-patched',
        'p7zip-full',
        'pass',
        'picard',
        'puppet',
        'sudo',
        'syncthing',
        'taskwarrior',
        'tmux',
        'tree',
        'vim-gnome',
        'vit',
        'yadm',
        'zgen',
        'zsh',
    ]

    $gem = [
        'puppet-lint',
        'tmuxinator',
    ]

    $npm = [
        'fuck-you',
        'jshint',
        'LiveScript',
        'n',
        'nsp',
        'ydict.js',
    ]

    $pip = [
        'virtualenvwrapper',
    ]
}
