$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "seo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "seo"
  s.version     = Seo::VERSION
  s.authors     = ["bazaretas", "mahmoud_khaled"]
  s.email       = ["bazaretas@gmail.com"]
  s.homepage    = "https://github.com/thepythonic/seo_pages"
  s.summary     = "Add Seo to your pages"
  s.description = "Add Seo to your pages"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  #s.add_development_dependency "sqlite3"
end
