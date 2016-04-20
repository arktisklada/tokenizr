$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tokenizr/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "tokenizr"
  spec.version     = Tokenizr::VERSION
  spec.authors     = ["arktisklada"]
  spec.email       = ["mail@enorganik.com"]
  spec.summary     = %q{}
  spec.description = %q{}
  spec.homepage    = "https://github.com/arktisklada/tokenizr"
  spec.license     = "MIT"
  if File.exist?('UPGRADING.md')
    spec.post_install_message = File.read('UPGRADING.md')
  end

  spec.files = Dir["lib/**/*", "LICENSE.TXT", "Rakefile", "README.md"]
  spec.test_files = Dir["test/**/*"]

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
end
