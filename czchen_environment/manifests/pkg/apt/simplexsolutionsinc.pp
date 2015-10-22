class czchen_environment::pkg::apt::simplexsolutionsinc {
    apt::source { 'simplexsolutionsinc':
        comment  => 'For https://www.vpnunlimitedapp.com/',
        location => 'http://apt.simplexsolutionsinc.com/repository/',
        release  => 'wheezy',
        repos    => 'main',
        include  => {
            deb => true,
            src => false,
        },
        require  => Apt::Key[simplexsolutionsinc]
    }

    apt::key { 'simplexsolutionsinc':
        id => 'A622AFAC2120417CB90A4356F376DA5306BED4DC',
    }
}
