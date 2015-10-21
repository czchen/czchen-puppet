node default {
    class { 'apt':
        purge => {
            'sources.list'   => true,
            'sources.list.d' => true,
        }
    }

    include apt
    include czchen_environment
}
