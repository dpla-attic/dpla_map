source 'https://rubygems.org'

gemspec

gem 'active-triples', :git => 'https://github.com/no-reply/ActiveTriples.git', :branch => 'feature/validations-2'
gem 'linked_vocabs', :git => 'https://github.com/no-reply/linked_vocabs.git'

group :development do
  gem 'pry'
  gem 'pry-doc'
  gem 'pry-debugger'
  gem 'pry-rails'
  # Spring as Rails preloader
  gem 'spring'
  # Guard for auto-test running
  gem 'guard', '~>1.0'
  gem 'guard-rspec', '~>3.0'
  gem 'rdf-mongo'
end

group :test do
  gem 'rspec'
end

group :development, :test do
  gem 'factory_girl', '~> 4.0'
end
