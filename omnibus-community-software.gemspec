# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'version'

Gem::Specification.new do |s|
  s.name        = 'omnibus-community-software'
  s.version     = OmnibusCommunitySoftware::VERSION
  s.authors     = ['Ben Snape']
  s.email       = ['bsnape@gmail.com']
  s.homepage    = 'http://github.com/bsnape/omnibus-community-software'
  s.summary     = %q{Community-driven Open Source software for use with Omnibus}
  s.description = %q{Community-driven Open Source software build descriptions for use with Omnibus}
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
end
