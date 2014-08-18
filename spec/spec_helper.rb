require 'bundler/setup'
require 'factory_girl'
require 'dpla'

require 'factories.rb'

Bundler.setup

RSpec.configure do |config|
  config.color = true
  config.tty = true
  
  config.include FactoryGirl::Syntax::Methods

  # Uncomment the following line to get errors and backtrace for deprecation warnings
  # config.raise_errors_for_deprecations!

  # Use the specified formatter
  config.formatter = :progress
end
