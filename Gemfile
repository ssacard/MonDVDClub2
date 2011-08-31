source 'http://rubygems.org'

gem 'rails', '3.1.0'
gem 'sqlite3'
gem 'mootools-rails'
gem 'json'
gem 'will_paginate'
gem 'racc'
gem 'babilu'
gem 'mustache'
gem 'poirot', :path => "vendor/plugins/poirot"
gem 'oauth'
gem 'oauth2', '0.4.1'
gem 'sociopathor', :git => 'git://github.com/oelmekki/sociopathor.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'uglifier'
end

group :production do
	gem 'unicorn'
  gem 'mysql2', '<0.3'
end

group :development, :test, :cucumber do
	gem 'autotest'
  gem 'autotest-rails'
	gem 'rspec-rails'
  gem 'ruby-debug19'
	gem 'capybara'
	gem 'database_cleaner'
	gem 'cucumber-rails'
	gem 'cucumber'
	gem 'spork'
	gem 'launchy', '0.4.0'
  gem 'rcov'
end
