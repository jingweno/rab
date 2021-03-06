# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rab/version'

Gem::Specification.new do |spec|
  spec.name          = "rab"
  spec.version       = Rab::VERSION
  spec.authors       = ["Jingwen Owen Ou"]
  spec.email         = ["jingweno@gmail.com"]
  spec.summary       = %q{Rails Assets Buidler (RAB) builds Rails asset as a gem from a bower project.}
  spec.homepage      = "https://github.com/jingweno/rab"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "~>4.0"
  spec.add_dependency "thor", "~>0.19.1"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
