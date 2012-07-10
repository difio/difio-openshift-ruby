# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "difio-openshift-ruby/version"

Gem::Specification.new do |s|
  s.name        = "difio-openshift-ruby"
  s.version     = Difio::Openshift::VERSION
  s.authors     = ["Svetlozar Argirov"]
  s.email       = ["zarrro@gmail.com"]
  s.homepage    = "http://github.com/difio/difio-openshift-ruby"
  s.summary     = %q{Difio registration agent for OpenShift / Ruby applications}
  s.description = %q{Difio registration agent for OpenShift / Ruby applications. See the README for Usage.}

  s.rubyforge_project = "difio-openshift-ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "common-ruby-difio"
end
