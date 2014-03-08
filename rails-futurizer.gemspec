require File.expand_path("../lib/futurizer/version", __FILE__)

Gem::Specification.new do |s|
  s.name = "rails-futurizer"
  s.version = Futurizer::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Brian Auton"]
  s.email = ["brianauton@gmail.com"]
  s.homepage = "http://github.com/brianauton/rails-futurizer"
  s.summary = "Drag your legacy Rails apps into the future a little less painfully."
  s.license = "MIT"
  s.files = Dir.glob("lib/**/*") + ["README.md", "History.md", "License.txt"]
  s.require_path = "lib"
  s.add_development_dependency "rspec", "~> 3.0.0.beta2"
  s.add_development_dependency "rake", "~> 0"
end
