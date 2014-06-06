# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'such_doge_very_wow/version'

Gem::Specification.new do |spec|
  spec.name          = "such_doge_very_wow"
  spec.version       = SuchDogeVeryWow::VERSION
  spec.authors       = ["Aldric Giacomoni"]
  spec.email         = ["trevoke@gmail.com"]
  spec.summary       = %q{A parser for DSON (Doge Serialized Object Notation)}
  spec.description   = %q{Such parser, very DSON. Much data wow.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
