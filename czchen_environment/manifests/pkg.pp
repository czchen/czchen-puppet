class czchen_environment::pkg {
    include czchen_environment::pkg::apt
    include czchen_environment::pkg::gem
    include czchen_environment::pkg::npm
    include czchen_environment::pkg::pip
}
