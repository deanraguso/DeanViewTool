require_relative 'lib/dean_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "dean_view_tool"
  spec.version       = DeanViewTool::VERSION
  spec.authors       = ["dean"]
  spec.email         = ["deanraguso@gmail.com"]

  spec.summary       = %q{Various View specific methods for rails applications I use.}
  spec.description   = %q{Mainly contains HTML generating methods for Rails applications.}
  spec.homepage      = "https://github.com/deanraguso/DeanViewTool"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = 'http://mygemserver.com'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/deanraguso/DeanViewTool"
  spec.metadata["changelog_uri"] = "https://github.com/deanraguso/DeanViewTool"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
