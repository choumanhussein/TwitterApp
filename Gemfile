source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '3.0.1'

#Core
gem 'rails', '~> 6.0.3'

#Middleware
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'

#View
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'bootsnap', '>= 1.4.2', require: false

#Backend
gem 'devise'
gem 'jbuilder', '~> 2.7'
gem 'enumerize'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-github'
gem 'carrierwave'
gem 'cloudinary'
gem 'gon'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
