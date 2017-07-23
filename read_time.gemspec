# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "read_time/version"

Gem::Specification.new do |spec|
  spec.name          = "read_time"
  spec.version       = ReadTime::VERSION
  spec.authors       = ["Kaan Kölköy"]
  spec.email         = ["kaanklky@gmail.com"]

  spec.summary       = "Find out read time of your content in hh:mm:ss format."
  spec.homepage      = "https://github.com/kaanklky/read_time"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
