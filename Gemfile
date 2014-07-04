source 'https://rubygems.org'
# Project's ruby version
ruby '2.1.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
# Use postgresql as the database for Active Record
gem 'pg'
# Server client
gem 'thin', '~> 1.6.2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# For YouTube's load bar style
gem 'nprogress-rails'
# Rails's translations
gem 'rails-i18n', '~> 4.0.2'
# To able use of slim inside rails application
gem 'slim-rails', '~> 2.1.4'
# Meta controllers/routes
gem 'inherited_resources', '~> 1.4.1'
# For website administration
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'active_admin_editor'
# For authentication
gem 'devise'
# Upload attachment to amazon S3
gem 'paperclip', '~> 3.5.3'
gem 'aws-sdk'
# Foundation, the most advanced front-end framework
gem 'foundation-rails'
# Pagination
gem 'kaminari'

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec', '~> 1.0.2'
end

group :development, :test do
  gem 'pry-rails', '~> 0.3.2'
  gem 'machinist', '~> 2.0'
  gem 'rspec-rails', '~> 2.14'
  gem 'awesome_print', '~> 1.2.0', require: false
end

group :test do
  gem 'simplecov', '~> 0.8.2', require: false
  gem 'database_cleaner', '~> 1.2.0'
  gem 'shoulda-matchers', '~> 2.6.1', require: false
  gem 'capybara'
  gem 'capybara-webkit'
end

group :production do
  gem 'rails_12factor', '~> 0.0.2'
end
