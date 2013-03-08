# Capistrano::Rbenv::Ruby193deps::Centos5

Capistrano task to install build-dependencies of Ruby 1.9.3 for CentOS 5.x

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-rbenv-ruby193deps-centos5'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-rbenv-ruby193deps-centos5

## Usage

load capistrano-rbenv-ruby193deps-centos5 in your config/deploy.rb:

    require 'capistrano-rbenv-ruby193deps-centos5'

And then, capistrano-rbenv-ruby193deps-centos5 runs on deploy:setup task,
and install build-dependencies of ruby1.9.3 (only at CentOS 5.x hosts).

So, you can install ruby 1.9.3 with very simple configuration:

    require 'capistrano-rbenv'
    require 'capistrano-rbenv-ruby193deps-centos5'
    set :rbenv_ruby_version, '1.9.3-p374'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
