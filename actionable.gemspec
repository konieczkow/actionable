$:.push File.expand_path("../lib", __FILE__)

require "actionable/version"

Gem::Specification.new do |s|
  s.name        = "actionable"
  s.version     = Actionable::VERSION
  s.authors     = ["Marek Kirejczyk"]
  s.email       = ["marek.kirejczyk@aenima.pl"]
  s.homepage    = "https://github.com/aenima/actionable"
  s.summary     = "Javascriptless declarative lib for common web page interactions using css classes data tags."
  s.description = "Use css classes and data tags to do common page interactions without unnecessary javascripts."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"

  s.add_development_dependency "sqlite3"
end
