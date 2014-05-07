# -*- encoding: utf-8 -*-
# stub: phaxio 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "phaxio"
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sean Behan", "Brett Chalupa"]
  s.date = "2012-10-15"
  s.description = "A Ruby Gem for interacting with Phaxio's JSON API. Currently, not all of the Phaxio API calls are supported. The essentials are in place and more will be coming with future versions of this gem."
  s.email = ["inbox@seanbehan.com", "brettchalupa@gmail.com"]
  s.homepage = "http://www.gristmill.io/posts/17-introducing-the-phaxio-gem-an-easy-way-to-use-phaxio-with-ruby"
  s.rubygems_version = "2.2.2"
  s.summary = "A Ruby Gem for interacting with Phaxio's JSON API"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httmultiparty>, ["~> 0.3.8"])
      s.add_development_dependency(%q<fakeweb>, ["~> 1.3.0"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2.2"])
    else
      s.add_dependency(%q<httmultiparty>, ["~> 0.3.8"])
      s.add_dependency(%q<fakeweb>, ["~> 1.3.0"])
      s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
    end
  else
    s.add_dependency(%q<httmultiparty>, ["~> 0.3.8"])
    s.add_dependency(%q<fakeweb>, ["~> 1.3.0"])
    s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
  end
end
