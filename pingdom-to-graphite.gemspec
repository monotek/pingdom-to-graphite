# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pingdom-to-graphite/version"

Gem::Specification.new do |s|
  s.name        = "pingdom-to-graphite"
  s.version     = Multipartite::VERSION
  s.authors     = ["Lew Goettner"]
  s.email       = ["lew@goettner.net"]
  s.homepage    = "http://lewg.github.com/pingdom-to-graphite"
  s.summary     = %q{A command line tool for pulling stats from pingdom and shipping them to graphite.}
  s.description = s.summary

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "thor"
end