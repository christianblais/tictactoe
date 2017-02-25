# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tictactoe/version'

Gem::Specification.new do |spec|
  spec.name          = "tictactoe"
  spec.version       = Tictactoe::VERSION
  spec.authors       = ["Christian Blais"]
  spec.email         = ["christ.blais@gmail.com"]

  spec.summary       = %q{Practice machine learning with a small tictactoe game}
  spec.homepage      = "https://github.com/christianblais/tictactoe"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
