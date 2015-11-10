# rubocop:disable Style/FileName
#
# squelch:
# lib/vagrant-alpine.rb:1:1: C: Use snake_case for source file names.
# require 'pathname'
#
require 'pathname'
require 'vagrant-alpine/plugin'

module VagrantPlugins
  module GuestAlpine
    # lib_path = Pathname.new(File.expand_path('../vagrant-alpine', __FILE__))
    # autoload :Action, lib_path.join('action')
    # autoload :Errors, lib_path.join('errors')
  end
end
