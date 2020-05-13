require_relative 'lib/simple_spider/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_spider"
  spec.version       = SimpleSpider::VERSION
  spec.authors       = ["Shairyar Baig"]
  spec.email         = ["shairyarbaig@gmail.com"]

  spec.summary       = %q{Simple spider}
  spec.description   = %q{Simple spider to data scraping}
  spec.homepage      = "https://github.com/shairyar/simple_spider"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/shairyar/simple_spider"
  spec.metadata["changelog_uri"] = "https://github.com/shairyar/simple_spider"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
