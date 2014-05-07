# -*- encoding: utf-8 -*-
# stub: ts-delayed-delta 2.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "ts-delayed-delta"
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Pat Allan"]
  s.date = "2014-04-21"
  s.description = "Manage delta indexes via Delayed Job for Thinking Sphinx"
  s.email = ["pat@freelancing-gods.com"]
  s.homepage = "http://github.com/pat/ts-delayed-delta"
  s.rubyforge_project = "ts-delayed-delta"
  s.rubygems_version = "2.2.2"
  s.summary = "Thinking Sphinx - Delayed Deltas"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thinking-sphinx>, [">= 1.5.0"])
      s.add_runtime_dependency(%q<delayed_job>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, ["~> 0.5.2"])
      s.add_development_dependency(%q<combustion>, ["~> 0.4.0"])
      s.add_development_dependency(%q<database_cleaner>, ["~> 0.7.1"])
      s.add_development_dependency(%q<delayed_job_active_record>, ["~> 0.4.4"])
      s.add_development_dependency(%q<mysql2>, ["~> 0.3.12b4"])
      s.add_development_dependency(%q<pg>, ["~> 0.11.0"])
      s.add_development_dependency(%q<rake>, [">= 0.9.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.11.0"])
    else
      s.add_dependency(%q<thinking-sphinx>, [">= 1.5.0"])
      s.add_dependency(%q<delayed_job>, [">= 0"])
      s.add_dependency(%q<appraisal>, ["~> 0.5.2"])
      s.add_dependency(%q<combustion>, ["~> 0.4.0"])
      s.add_dependency(%q<database_cleaner>, ["~> 0.7.1"])
      s.add_dependency(%q<delayed_job_active_record>, ["~> 0.4.4"])
      s.add_dependency(%q<mysql2>, ["~> 0.3.12b4"])
      s.add_dependency(%q<pg>, ["~> 0.11.0"])
      s.add_dependency(%q<rake>, [">= 0.9.2"])
      s.add_dependency(%q<rspec>, ["~> 2.11.0"])
    end
  else
    s.add_dependency(%q<thinking-sphinx>, [">= 1.5.0"])
    s.add_dependency(%q<delayed_job>, [">= 0"])
    s.add_dependency(%q<appraisal>, ["~> 0.5.2"])
    s.add_dependency(%q<combustion>, ["~> 0.4.0"])
    s.add_dependency(%q<database_cleaner>, ["~> 0.7.1"])
    s.add_dependency(%q<delayed_job_active_record>, ["~> 0.4.4"])
    s.add_dependency(%q<mysql2>, ["~> 0.3.12b4"])
    s.add_dependency(%q<pg>, ["~> 0.11.0"])
    s.add_dependency(%q<rake>, [">= 0.9.2"])
    s.add_dependency(%q<rspec>, ["~> 2.11.0"])
  end
end
