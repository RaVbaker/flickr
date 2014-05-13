Gem::Specification.new do |s|
  s.name            = 'flickr.rb'
  s.version         = '1.2.0'
  s.authors         = ['Scott Raymond, Patrick Plattes, Rafal Piekarski']
  s.autorequire     = 'flickr.rb'
  s.date            = '2014-05-13'
  s.email           = 'ravbaker@gmail.com'
  s.files           = Dir.glob("**/*").delete_if { |item| item.include?(".git") || item[/^pkg/] }
  s.homepage        = 'http://github.com/RaVbaker/flickr/'
  s.require_paths   = ['lib']
  s.requirements    = ['Flickr developers API key']
  s.summary         = 'An insanely easy interface to the Flickr photo-sharing service. Also available as a Rails plugin! By Scott Raymond. Maintainer: Rafal Piekarski'
  s.description     = 'Gem for using Flickr API in Ruby - https://www.flickr.com/services/api/'
  s.licenses        = ['MIT']

  s.rubygems_version = '1.2.0'
  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<xml-simple>, ['>= 1.0.7'])
    else
      s.add_dependency(%q<xml-simple>, ['>= 1.0.7'])
    end
  else
    s.add_dependency(%q<xml-simple>, ['>= 1.0.7'])
  end

  s.add_development_dependency      'rake'
  s.add_development_dependency      'rdoc'
  s.add_development_dependency      'mocha'
end
