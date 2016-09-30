# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'medium_scraper/version'

Gem::Specification.new do |spec|
  spec.name          = "medium_scraper"
  spec.version       = MediumScraper::VERSION
  spec.authors       = ["Ryan Waits"]
  spec.email         = ["ryan.waits@gmail.com"]

  spec.summary       = %q{Medium read-only API for posts}
  spec.description   = %q{For Medium bloggers to retrieve their user info and latest posts}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "mechanize"
  spec.add_runtime_dependency "nokogiri"
  spec.add_runtime_dependency "json"
  spec.add_runtime_dependency "awesome_print"
end
