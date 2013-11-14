# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest/activemodel/version'

Gem::Specification.new do |spec|
  spec.name          = "minitest-activemodel"
  spec.version       = Minitest::Activemodel::VERSION
  spec.authors       = ["Jerry Cheung"]
  spec.email         = ["jch@whatcodecraves.com"]
  spec.description   = %q{Minitest assertions for ActiveModel}
  spec.summary       = %q{assert_valid, refute_valid. Works with ActiveRecord}
  spec.homepage      = "https://github.com/jch/minitest-activemodel"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 1.9"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "activemodel"
end
