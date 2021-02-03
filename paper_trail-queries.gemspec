# frozen_string_literal: true

require_relative "lib/paper_trail/queries/version"

Gem::Specification.new do |spec|
  spec.name = "paper_trail-queries"
  spec.version = PaperTrail::Queries.gem_version.to_s
  spec.authors = ["Jared Beck"]
  spec.email = ["jared@jaredbeck.com"]
  spec.summary = "Query methods for your PaperTrail::Version model."
  spec.homepage = "https://github.com/paper-trail-gem"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")
  spec.required_rubygems_version = ">= 2"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage
  spec.files = Dir["lib/**/*", "LICENSE"].reject { |f| File.directory?(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "activerecord", ">= 5.2"
  # If we were really picky, we might constrain PT >= 12, because <= 11 has
  # these queries, but 12 hasn't been released yet, so that would make it really
  # inconvenient to develop the first release of this gem.
  spec.add_dependency "paper_trail", ">= 11"
  spec.add_development_dependency "rspec", "~> 3.10"
  spec.add_development_dependency "rubocop", "~> 1.9"
  spec.add_development_dependency "rubocop-packaging", "~> 0.5.1"
  spec.add_development_dependency "rubocop-rspec", "~> 2.2"
end
