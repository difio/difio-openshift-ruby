# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "monupco-openshift-ruby/version"

Gem::Specification.new do |s|
  s.name        = "monupco-openshift-ruby"
  s.version     = Monupco::Openshift::VERSION
  s.authors     = ["Svetlozar Argirov"]
  s.email       = ["zarrro@gmail.com"]
  s.homepage    = "http://github.com/monupco/monupco-openshift-ruby"
  s.summary     = %q{monupco.com client for OpenShift / Ruby applications}
  s.description = %q{monupco.com client for OpenShift / Ruby applications. See the README for Usage.}

  s.rubyforge_project = "monupco-openshift-ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "common-ruby-monupco"
end
