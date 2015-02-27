class czchen_environment::params::user {
    $account  = 'czchen'
    $home     = "/home/${account}"
    $shell    = '/bin/zsh'

    $group    = $account
    $umask    = 077
    $path     = '/usr/local/bin:/usr/bin:/bin'
}
