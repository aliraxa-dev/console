# frozen_string_literal: true

require_relative "lib/my_console/version"

Gem::Specification.new do |spec|
  spec.name = "my_console"
  spec.version = MyConsole::VERSION
  spec.authors = ["Ali Raza"]
  spec.email = ["aliraxayasin@gmail.com"]

  spec.summary = "A gem for logging messages to the terminal"
  spec.description = "This gem provides a simple way to print messages with color to the terminal."
  spec.homepage = "https://github.com/aliraza-stack/console"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
end
