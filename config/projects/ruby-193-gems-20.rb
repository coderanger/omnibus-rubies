
name "poise-ruby-193-gems-20"
maintainer "Poise"
homepage "ruby.poise.io"

replaces        "poise-ruby-193-gems-20"
install_path    "/opt/ruby-193-gems-20"
build_version   Omnibus::BuildVersion.new.semver
build_iteration 1

# creates required build directories
dependency "preparation"

dependency "ruby-193"
dependency "rubygems-20"

# version manifest file
dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"

# Force the umask because something in rbenv is resetting it to 0000
File.umask(0022)
