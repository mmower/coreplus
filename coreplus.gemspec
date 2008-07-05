require 'rubygems'

SPEC = Gem::Specification.new do |spec|
  spec.name         = 'coreplus'
  spec.version      = '0.1.0'
  spec.author       = 'Matt Mower'
  spec.email        = 'self@mattmower.com'
  spec.homepage     = 'http://matt.blogs.it/'
  spec.platform     = Gem::Platform::RUBY
  spec.summary      = 'Some extensions to the Ruby core & std.lib'
  spec.require_path = 'lib'
  spec.autorequire  = 'coreplus'
  spec.has_rdoc     = false
end
