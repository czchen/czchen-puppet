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
        key        => '0xF376DA5306BED4DC',
    }
}
