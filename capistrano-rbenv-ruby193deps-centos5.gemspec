# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano-rbenv-ruby193deps-centos5/version'

Gem::Specification.new do |gem|
  gem.name          = "capistrano-rbenv-ruby193deps-centos5"
  gem.version       = Capistrano::Rbenv::Ruby193deps::Centos5::VERSION
  gem.authors       = ["Takeshi KOMIYA"]
  gem.email         = ["i.tkomiya@gmail.com"]
  gem.description   = %q{Capistrano task to install build-dependencies of Ruby 1.9.3 for CentOS 5.x}
  gem.summary       = %q{Capistrano task to install build-dependencies of Ruby 1.9.3 for CentOS 5.x}
  gem.homepage      = "https://github.com/tk0miya/capistrano-rbenv-ruby193deps-centos5"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'capistrano-platform-recognizer'
end
