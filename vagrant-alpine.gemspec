# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-alpine/version'

Gem::Specification.new do |spec|
  spec.name          = 'vagrant-alpine'
  spec.version       = VagrantPlugins::GuestAlpine::VERSION
  spec.license       = 'MIT'

  spec.authors       = ['matt maier']
  spec.email         = ['maier@users.noreply.github.com']

  spec.summary       = 'Enables Vagrant to manage Alpine Linux Guests.'
  spec.description   = 'Enables Vagrant to manage Alpine Linux Guests.'
  spec.homepage      = 'https://gihub.com/maier/vagrant-alpine'

  spec.add_development_dependency 'rake', '~> 10.4.2'
  spec.add_development_dependency 'rspec-core', '~> 2.14'
  spec.add_development_dependency 'rspec-expectations', '~> 2.14'
  spec.add_development_dependency 'rspec-mocks', '~> 2.14'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_path  = 'lib'
end
