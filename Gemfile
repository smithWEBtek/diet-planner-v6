source 'https://rubygems.org'

git_source(:github) do |repo_name|
repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
"https://github.com/#{repo_name}.git"
end
#documents
gem 'mailgun'
gem 'paperclip'
gem 'carrierwave'
gem 'cloudinary'
gem 'pdf-reader'
gem 'rails-erd'
 
#scraping
gem 'watir'
gem 'nokogiri' 
gem 'httparty'

#enumerate e.g. admin, standard via integer in db column
gem 'pundit'
#user authorization
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'

 #debugging
gem 'pry'
gem 'pry-rails'

#rails, postgres database and puma local server
gem 'rails', '~> 5.0.1'
gem "pg", "~> 0.21" 
gem 'puma', '~> 3.0'
gem 'yaml_db'

#style
gem "bootstrap-sass"
gem 'sprockets', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

#javascript, jquery, json, api, serializer
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'json'
gem 'active_model_serializers'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
	gem 'minitest'
	gem 'dotenv-rails' 
end

group :development do

  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
