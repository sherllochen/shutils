$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "shutils/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "shutils"
  s.version     = Shutils::VERSION
  s.authors     = ["sherllo"]
  s.email       = ["sherllochen@gmail.com"]
  s.homepage    = "http://sherllo.chen"
  s.summary     = "通用工具集"
  s.description = ": Description of Shutils."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"

  s.add_development_dependency "sqlite3"
end
