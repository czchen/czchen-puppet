node default {
    class { 'apt':
        purge_sources_list   => true,
        purge_sources_list_d => true,
    }

    include apt
    include czchen_environment
}
