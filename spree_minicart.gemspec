# encoding: utf-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_minicart'
  s.version     = '1.0.2'
  s.summary     = "Spree Minicart displays a minicart in your spree store"
  s.description = "Spree Minicart allows customer to preview their cart without leaving the page they're on. This is a fork from https://github.com/sbounmy/spree_minicart by Stéphane Bounmy."
  s.required_ruby_version = '>= 2.3.3'

  s.author            = 'Stéphane Bounmy'
  s.email             = 'stephanebounmy@gmail.com'
  s.homepage          = 'https://github.com/sbounmy/spree_minicart'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = '>= 3.2.0'
  s.add_runtime_dependency 'spree_core', spree_version
  s.add_runtime_dependency 'spree_frontend', spree_version
  s.add_runtime_dependency 'spree_auth_devise', '~>3.4.0'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'puma'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sass-rails', '~> 5.0'
  s.add_development_dependency 'coffee-rails', '~> 4.2'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency "bootsnap", '~> 1.3.0'
  s.add_development_dependency "listen", '~> 3.1.0'
end
