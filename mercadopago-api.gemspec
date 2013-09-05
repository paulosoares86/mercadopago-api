# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mercadopago/api/version'

Gem::Specification.new do |spec|
  spec.name          = "mercadopago-api"
  spec.version       = Mercadopago::VERSION
  spec.authors       = ["Sergio Marin"]
  spec.email         = ["higher.vnf@gmail.com"]
  spec.description   = %q{Gem to manage the mercadopago api}
  spec.summary       = %q{This gem manage the Mercadopago api using curl and mercadopago rest api}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'json'
  spec.add_dependency "curb"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end