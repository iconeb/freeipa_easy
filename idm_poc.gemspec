# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'idm_poc/version'

Gem::Specification.new do |spec|
  spec.name          = "idm_poc"
  spec.version       = IdmPoc::VERSION
  spec.authors       = ["Federico Nebiolo"]
  spec.email         = ["iconeb@yahoo.it"]

  spec.summary       = %q{Help to work with users in freeipa}
  spec.description   = %q{It's a small library, which will help with users and may be with other things in freeipa}
  spec.homepage      = "https://github.com/arnikasky/freeipa_easy"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "rest-client", "~> 2.0.0"
  spec.add_dependency "test-unit-full", "~> 0.0.5"
 end
