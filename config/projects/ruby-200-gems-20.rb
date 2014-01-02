
name "ruby-200-gems-20"
maintainer "Poise"
homepage "ruby.poise.io"


replaces        "ruby-200-gems-20"
install_path    "/opt/ruby-200-gems-20"
build_version   Omnibus::BuildVersion.new.semver
build_iteration 1

# creates required build directories
dependency "preparation"

dependency "ruby-200"
# ruby 2.0 comes with rubygems 2.0 (?) -- verify

# version manifest file
dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"

# Force the umask because something in rbenv is resetting it to 0000
File.umask(0022)
