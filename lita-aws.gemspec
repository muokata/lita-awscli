Gem::Specification.new do |spec|
  spec.name          = "lita-awscli"
  spec.version       = "0.1.0"
  spec.authors       = ["Write your name"]
  spec.email         = ["Write your email address"]
  spec.description   = "Add a description"
  spec.summary       = "Add a summary"
  spec.homepage      = "http://localhost"
  spec.license       = "Add a license"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.6"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end
