class czchen-environment::pkg::apt::debian {
    apt::source { 'debian_unstable':
      comment     => 'Debian unstable',
      location    => 'http://http.debian.net/debian/',
      release     => 'unstable',
      repos       => 'main contrib non-free',
      include_src => true,
      include_deb => true
    }
}
