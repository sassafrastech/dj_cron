# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dj_cron/version'

Gem::Specification.new do |spec|
  spec.name          = "dj_cron"
  spec.version       = DjCron::VERSION
  spec.authors       = ["Tom Smyth"]
  spec.email         = ["tom@sassafras.coop"]
  spec.summary       = %q{Enqueues DelayedJob jobs easily from cron.}
  spec.description   = %q{Enqueues DelayedJob jobs easily from cron without loading the full Rails environment.}
  spec.homepage      = "https://github.com/sassafrastech/dj_cron"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ['djc-enqueue']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
