include apt

class czchen-environment::pkg::apt::debian {
}

class czchen-environment::pkg::apt {
    include czchen-environment::pkg::apt::debian
}
