source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.7'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4', '>= 5.2.4.3'
gem 'actionpack', '>= 5.2.4.3'
gem 'activestorage', '>= 5.2.4.3'
gem 'activesupport', '>= 5.2.4.3'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '>= 3.12.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_bot_rails'#seedの便利版？
  # gem 'rails-controller-testing'#controller spec じゃなくてrequest sepc に書いてね？
  gem 'ffaker'#ダミーデータの高速版
  gem 'bullet'#N＋１問題を検知及び通知
  gem 'bundle_outdated_formatter'
  # gem 'rubocop', '0.35.1', require: false
  # gem 'onkcop'#コーティングを統一（綺麗になる？）
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'rspec-rails'
  gem "factory_bot_rails"
  gem 'faker'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'devise'
gem 'refile', require: 'refile/rails', github: 'manfe/refile'
gem 'refile-mini_magick'
gem 'jquery-rails'
gem 'bootstrap-sass', '~> 3.3.6'


# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# gem 'devise'
# gem 'ransack'
# gem 'jquery-rails'
# gem "jquery-ui-rails"
# gem 'refile', require: 'refile/rails', github: 'manfe/refile'
# gem 'refile-mini_magick'
# gem 'pagy'#ページネーション
# gem 'bootstrap-sass', '~> 3.3.6'
# gem 'font-awesome-sass'
# gem 'gretel'#パンくずリスト
# gem 'rails-i18n'#ja.ymlに日本語にしたいのを記述
# gem 'devise-i18n'
# gem 'devise-i18n-views'
# gem 'rename'#アプリ名変更したい場合
# gem 'jp_prefecture'
# gem 'active_hash'#擬似モデルjp_prefectureなどと
# gem "refile-s3"#awsのs3に画像を保存
# gem 'aws-sdk-s3'#これもawsのs3に画像を保存？
# gem 'jquery-turbolinks'

# gem 'dotenv-rails'
# gem 'capistrano'
# gem 'capistrano-rails'
# gem 'capistrano3-puma'
# gem 'capistrano-rbenv'
# gem 'capistrano-bundler'
