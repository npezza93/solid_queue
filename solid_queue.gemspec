require_relative "lib/solid_queue/version"

Gem::Specification.new do |spec|
  spec.name        = "solid_queue"
  spec.version     = SolidQueue::VERSION
  spec.authors     = [ "Rosa Gutierrez" ]
  spec.email       = [ "rosa@37signals.com" ]
  spec.homepage    = "https://github.com/rails/solid_queue"
  spec.summary     = "Database-backed Active Job backend."
  spec.description = "Database-backed Active Job backend."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/rails/solid_queue"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  rails_version = ">= 7.1"
  spec.add_dependency "activerecord", rails_version
  spec.add_dependency "activejob", rails_version
  spec.add_dependency "railties", rails_version
  spec.add_dependency "concurrent-ruby", "~> 1.3"
  spec.add_dependency "fugit", "~> 1.11"

  spec.add_development_dependency "debug"
  spec.add_development_dependency "mocha"
  spec.add_development_dependency "puma"
  spec.add_development_dependency "mysql2"
  spec.add_development_dependency "pg"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rubocop-rails-omakase"
end
