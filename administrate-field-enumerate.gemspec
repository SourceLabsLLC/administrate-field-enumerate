$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name = 'administrate-field-enumerate'
  s.version = '0.0.1'
  s.authors = ['Jônatas Rancan', 'Andrei Bondarev']
  s.email = ['hello@sourcelabs.io']
  s.homepage = 'https://github.com/SourceLabsLLC/administrate-field-enumerate'
  s.summary = s.description = 'enumerate_it field plugin for Administrate'
  s.description = s.summary
  s.license = 'MIT'

  s.require_paths = ['lib']
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.add_dependency 'administrate'
  s.add_dependency 'enumerate_it'
  s.add_dependency 'rails', '>= 4.2', '< 6.0'
end
