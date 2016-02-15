class czchen_environment::pkg::apt::mongodb {

    apt::source { 'mongodb':
        comment  => 'http://docs.mongodb.org/manual/tutorial/install-mongodb-on-debian/',
        location => 'http://repo.mongodb.org/apt/debian',
        release  => 'wheezy/mongodb-org/3.2',
        repos    => 'main',
        include  => {
            deb => true,
            src => false,
        },
        require  => Apt::Key[mongodb]
    }
}

class czchen_environment::pkg::apt::mongodb {
    apt::key { 'mongodb':
        id => '492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10',
    }
}
