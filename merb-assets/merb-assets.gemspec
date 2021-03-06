#!/usr/bin/env gem build
# -*- encoding: utf-8 -*-

# Assume a typical dev checkout to fetch the current merb-core version
require File.expand_path('../../merb-core/lib/merb-core/version', __FILE__)

# Load this library's version information
require File.expand_path('../lib/merb-assets/version', __FILE__)

require 'date'

Gem::Specification.new do |gem|
  gem.name        = 'merb-assets'
  gem.version     = Merb::Assets::VERSION.dup
  gem.date        = Date.today.to_s
  gem.authors     = ['Ezra Zygmuntowicz']
  gem.email       = 'ez@engineyard.com'
  gem.homepage    = 'http://merbivore.com/'
  gem.description = 'Merb plugin for supporting assets'
  gem.summary     = 'Merb plugin that provides helpers for assets and asset bundling'

  gem.has_rdoc = 'yard'
  gem.require_paths = ['lib']
  gem.files = Dir['Rakefile', '{lib,spec,docs}/**/*', 'README*', 'LICENSE*', 'TODO*'] & `git ls-files -z`.split("\0")

  # Runtime dependencies
  gem.add_dependency 'merb-core', "~> #{Merb::VERSION}"

  # Development dependencies
  gem.add_development_dependency 'rspec', '>= 2.5'
end
