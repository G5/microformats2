# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'microformats2/version'

Gem::Specification.new do |gem|
  gem.name          = "microformats2"
  gem.version       = Microformats2::VERSION
  gem.authors       = ["Shane Becker", "Jessica Lynn Suttles", "Jessica Dillon"]
  gem.email         = ["veganstraightedge@gmail.com", "jlsuttles@gmail.com", "jessicard@mac.com"]
  gem.description   = %q{parses HTML for microformats and return a collection of dynamically defined Ruby objects}
  gem.summary       = %q{microformats2 parser}
  gem.homepage      = "https://github.com/G5/microformats2"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "nokogiri"
  gem.add_runtime_dependency "json"
  gem.add_runtime_dependency "activesupport"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "guard-rspec"
  gem.add_development_dependency "rb-fsevent"
  gem.add_development_dependency "simplecov"
  gem.add_development_dependency "webmock"
end
