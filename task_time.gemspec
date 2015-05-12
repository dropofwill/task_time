# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'task_time/version'

Gem::Specification.new do |spec|
  spec.name          = "task_time"
  spec.version       = TaskTime::VERSION
  spec.authors       = ["Will"]
  spec.email         = ["whp3652@rit.edu"]
  spec.summary       = %q{A taskwarrior plugin that adds time tracking and reporting features.}
  spec.description   = %q{A taskwarrior plugin that adds time tracking and reporting features. As such depends on taskwarrior tool to be installed/configured along with any Ruby dependencies in the Gemfile.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # spec.add_dependency "thor"
  spec.add_dependency "rtasklib"
  spec.add_dependency "gli"
  spec.add_dependency "user_config"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
end
