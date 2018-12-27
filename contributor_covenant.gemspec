lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "contributor_covenant/version"

Gem::Specification.new do |spec|
  spec.name          = "contributor_covenant"
  spec.version       = ContributorCovenant::VERSION
  spec.authors       = ["Andrew Mason"]
  spec.email         = ["masonam96@outlook.com"]

  spec.summary       = "contributor covenant file generator"
  spec.description   = "automatically generate a contributor covenant for any project"
  spec.homepage      = "https://github.com/andrewmcodes/contributor_covenant"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "pry", "~> 0.12.2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rubocop", "~> 0.60.0"
end
