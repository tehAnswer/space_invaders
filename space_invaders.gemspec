
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "space_invaders/version"

Gem::Specification.new do |spec|
  spec.name          = "space_invaders"
  spec.version       = SpaceInvaders::VERSION
  spec.authors       = ["tehAnswer"]
  spec.email         = ["sergiorodriguezgijon@gmail.com"]

  spec.summary       = 'Aliens text radar.'
  spec.description   = 'Identifying small aliens in a text-based image.'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'colorize', '~> 0.8.0'

  spec.add_development_dependency 'simplecov', '~> 0.15.1'
  spec.add_development_dependency 'pry', '~> 0.11.3'
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
