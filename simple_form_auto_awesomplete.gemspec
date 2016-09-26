# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_form_auto_awesomplete/version'

Gem::Specification.new do |spec|
  spec.name          = 'simple_form_auto_awesomplete'
  spec.version       = SimpleFormAutoAwesomplete::VERSION
  spec.authors       = ['Dmitry Lisichkin']
  spec.email         = ['dima@sb42.ru']
  spec.summary       = %q{Provide awesomplete input class for simple_form}
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/Tab10id/simple_form_auto_awesomplete'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'railties', '>= 3.1'
  spec.add_dependency 'auto_awesomplete', '~> 0.1.0'
  spec.add_dependency 'simple_form'

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rails', '~> 3.2.12'
end
