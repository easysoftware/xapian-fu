$:.push File.expand_path('../lib', __FILE__)
require 'xapian_fu/version'

Gem::Specification.new do |s|
  s.name    = 'xapian-fu'
  s.version = XapianFu::VERSION
  s.date    = '2020-03-23'
  s.license = 'MIT'
  s.summary = "A Ruby interface to the Xapian search engine"
  s.description = "A library to provide a more Ruby-like interface to the Xapian search engine."

  s.authors  = ['John Leach', 'Damian Janowski']
  s.email    = 'john@johnleach.co.uk'
  s.homepage = 'https://github.com/johnl/xapian-fu'

  s.files = Dir.glob("lib/**/*") + Dir.glob("examples/**/*")
  s.test_files = Dir.glob("spec/**/*")
  s.require_paths = ["lib"]
  s.metadata["easy"] = "true"

  s.rdoc_options << '--title' << 'Xapian Fu' <<
    '--main' << 'README.rdoc' <<
    '--line-numbers'

  s.extra_rdoc_files = ["README.rdoc", "LICENSE", "CHANGELOG.rdoc"]

  s.requirements << "libxapian-dev, or the xapian-ruby gem"
  s.required_ruby_version = '>= 2.1.0'
end
