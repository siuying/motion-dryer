# -*- encoding: utf-8 -*-
require File.expand_path('../lib/motion-dryer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Francis Chong"]
  gem.email         = ["francis@ignition.hk"]
  gem.description   = %q{DRY your RubyMotion project}
  gem.summary       = %q{DRY your RubyMotion project}
  gem.homepage      = "https://github.com/siuying/motion-dryer"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "motion-dryer"
  gem.require_paths = ["lib"]
  gem.version       = Motion::Dryer::VERSION

  gem.add_development_dependency "rspec", ">= 2.0"
end
