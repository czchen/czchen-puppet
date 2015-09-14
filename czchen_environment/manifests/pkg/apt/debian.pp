class czchen_environment::pkg::apt::debian {
    apt::source { 'experimental':
        comment     => 'http://httpredir.debian.org/',
        location    => 'http://httpredir.debian.org/debian/',
        release     => 'experimental',
        repos       => 'main contrib non-free',
        include_src => true,
        include_deb => true,
    }

    # FIXME: remove duplicated code

    apt::source { 'unstable':
        comment     => 'http://httpredir.debian.org/',
        location    => 'http://httpredir.debian.org/debian/',
        release     => 'unstable',
        repos       => 'main contrib non-free',
        include_src => true,
        include_deb => true,
    }

    apt::source { 'testing':
        comment     => 'http://httpredir.debian.org/',
        location    => 'http://httpredir.debian.org/debian/',
        release     => 'testing',
        repos       => 'main contrib non-free',
        include_src => true,
        include_deb => true,
    }

    apt::source { 'stable':
        comment     => 'http://httpredir.debian.org/',
        location    => 'http://httpredir.debian.org/debian/',
        release     => 'stable',
        repos       => 'main contrib non-free',
        include_src => true,
        include_deb => true,
    }

    apt::source { 'oldstable':
        comment     => 'http://httpredir.debian.org/',
        location    => 'http://httpredir.debian.org/debian/',
        release     => 'oldstable',
        repos       => 'main contrib non-free',
        include_src => true,
        include_deb => true,
    }
}
