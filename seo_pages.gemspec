$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "seo_pages/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "seo_pages"
  s.version     = SeoPages::VERSION
  s.authors     = ["BadrIT", "mahmoud_khaled", "Hassan Zaki"]
  s.email       = ["bazaretas@gmail.com"]
  s.homepage    = "https://github.com/BadrIT/seo_pages"
  s.summary     = "Easily add SEO to your pages"
  s.description = "Web interface to manage your pages title, meta description and meta keywords"
  s.license     = 'MIT'

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

end