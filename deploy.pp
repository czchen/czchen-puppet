node default {
    class { 'apt':
        purge_sources_list => true,
    }

    include apt
    include czchen_environment
}
