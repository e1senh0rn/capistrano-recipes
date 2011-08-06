# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dark-capistrano-recipes}
  s.version = "0.8.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Phil Misiowiec}, %q{Leonardo Bighetti}, %q{Rogerio Augusto}]
  s.date = %q{2011-08-06}
  s.description = %q{Extend the Capistrano gem with these useful recipes}
  s.email = %q{leonardobighetti@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".rvmrc",
    "Gemfile",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "dark-capistrano-recipes.gemspec",
    "doc/god/god",
    "doc/god/god.conf",
    "doc/god/god.init.erb",
    "doc/nginx/nginx.init",
    "generators/app.god.erb",
    "generators/nginx.conf.erb",
    "generators/unicorn.rb.erb",
    "lib/capistrano_recipes.rb",
    "lib/helpers.rb",
    "lib/recipes/application.rb",
    "lib/recipes/bluepill.rb",
    "lib/recipes/bundler.rb",
    "lib/recipes/db.rb",
    "lib/recipes/deploy.rb",
    "lib/recipes/god.rb",
    "lib/recipes/hooks.rb",
    "lib/recipes/log.rb",
    "lib/recipes/nginx.rb",
    "lib/recipes/passenger.rb",
    "lib/recipes/resque.rb",
    "lib/recipes/sphinx.rb",
    "lib/recipes/symlinks.rb",
    "lib/recipes/unicorn.rb"
  ]
  s.homepage = %q{http://github.com/darkside/capistrano-recipes}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{Capistrano recipes}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, [">= 2.5.9"])
      s.add_runtime_dependency(%q<capistrano-ext>, [">= 1.2.1"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rdoc>, [">= 2.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<capistrano>, [">= 2.5.9"])
      s.add_dependency(%q<capistrano-ext>, [">= 1.2.1"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rdoc>, [">= 2.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<capistrano>, [">= 2.5.9"])
    s.add_dependency(%q<capistrano-ext>, [">= 1.2.1"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rdoc>, [">= 2.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

