$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wpe_swagger_ui/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wpe_swagger_ui"
  s.version     = WpeSwaggerUi::VERSION
  s.authors     = ["Nick McDonnough"]
  s.email       = ["nickmcd@gmail.com"]
  s.homepage    = ""
  s.summary     = ": Summary of WpeSwaggerUi."
  s.description = ": Description of WpeSwaggerUi."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.2"

  s.add_development_dependency "sqlite3"
end
