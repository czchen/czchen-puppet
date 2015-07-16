class czchen_environment::pkg::apt::mongodb {

    apt::source { 'mongodb':
        comment     => 'http://docs.mongodb.org/manual/tutorial/install-mongodb-on-debian/',
        location    => 'http://repo.mongodb.org/apt/debian',
        release     => 'wheezy/mongodb-org/3.0',
        repos       => 'main',
        include_src => false,
        include_deb => true,
        require     => Apt::Key[mongodb]
    }
}

class czchen_environment::pkg::apt::mongodb {
    apt::key { 'mongodb':
        key => '9ECBEC467F0CEB10',
    }
}
