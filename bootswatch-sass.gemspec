lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootswatch-sass/version'

Gem::Specification.new do |gem|
  gem.name          = "bootswatch-sass"
  gem.version       = Bootswatch::VERSION
  gem.authors       = ["Maxim Chernyak","Esteban Arango Medina"]
  gem.email         = ["max@bitsonnet.com","marranoparael31@gmail.com"]
  gem.description   = %q{Bootswatches converted to SCSS ready to use in Compass or Rails projects.}
  gem.summary       = %q{Bootswatches in Compass or Rails projects}
  gem.homepage      = "http://github.com/anthonycreates/bootswatch-sass"

  gem.add_dependency 'bootstrap-sass'
  gem.add_dependency 'activesupport', '~> 3.2.0'
  gem.add_dependency 'rake', '>= 0.8.7'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]
end
