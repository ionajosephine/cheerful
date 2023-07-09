# frozen_string_literal: true

require_relative "lib/cheerful/version"


Gem::Specification.new do |spec|
  spec.name = "cheerful"
  spec.version = Cheerful::VERSION
  spec.authors = ["ionajosephine"]
  spec.email = ["81577041+ionajosephine@users.noreply.github.com"]

  spec.summary = "A gem to modify the color of syntax errors in terminal logs."
  spec.description = "Cheerful gem allows you to customize the color of syntax errors in the terminal logs, adding some fun and cheer to the development process."
  spec.homepage = "https://github.com/your-username/cheerful"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ionajosephine/cheerful"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.

  spec.files += Dir["lib/**/*.rb"]

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end



