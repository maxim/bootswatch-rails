# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bootswatch-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Maxim Chernyak","Esteban Arango Medina"]
  gem.email         = ["max@bitsonnet.com","marranoparael31@gmail.com"]
  gem.description   = %q{Bootswatches converted to SCSS ready to use in Rails asset pipeline.}
  gem.summary       = %q{Bootswatches in your Rails asset pipeline}
  gem.homepage      = "http://github.com/maxim/bootswatch-rails"

  gem.add_dependency 'railties', '>= 3.1'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.name          = "bootswatch-rails"
  gem.require_paths = ["lib"]
  gem.version       = Bootswatch::Rails::VERSION
end
