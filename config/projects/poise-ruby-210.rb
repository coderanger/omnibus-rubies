
name "poise-ruby-210"
maintainer "Poise"
homepage "ruby.poise.io"

replaces        "poise-ruby-210"
install_path    "/opt/ruby-210"
build_version   Omnibus::BuildVersion.new.semver
build_iteration 1

# creates required build directories
dependency "preparation"

dependency "ruby-210"
# ruby 2.1 comes with rubygems 2.2

# version manifest file
dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"

# Force the umask because something in rbenv is resetting it to 0000
File.umask(0022)
