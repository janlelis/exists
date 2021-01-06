# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/exists/version"

Gem::Specification.new do |gem|
  gem.name          = "exists"
  gem.version       = Exists::VERSION
  gem.summary       = "Object#exists"
  gem.description   = "Objecd#exists: Like ActiveSupport's presence, but for Object#null?"
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["hi@ruby.consulting"]
  gem.homepage      = "https://github.com/janlelis/exists"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.0"
  gem.add_dependency "null_question", "~> 1.0"
end
