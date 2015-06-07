# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'condate/version'

Gem::Specification.new do |spec|
  spec.name          = "condate"
  spec.version       = Condate::VERSION
  spec.authors       = ["yuzoiwasaki"]
  spec.email         = ["a0556017@sophia.jp"]
  spec.summary       = %q{random food name generator}
  spec.description   = %q{random food name generator}
  spec.homepage      = "https://github.com/yuzoiwasaki/condate"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
