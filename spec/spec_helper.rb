# This file is copied to ~/spec when you run 'ruby script/generate rspec'
# from the project root directory.
require 'rubygems'
require 'spork'
Spork.prefork do

ENV["RAILS_ENV"] ||= 'test'
unless defined?(Rails)
  require File.expand_path("../../config/environment", __FILE__)
end
require 'rspec/rails'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  # == Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
  config.mock_with :rspec

  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, comment the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true
  ### Part of a Spork hack. See http://bit.ly/arY19y
  # Emulate initializer set_clear_dependencies_hook in
  #  railties/lib/rails/application/bootstrap.rb
  ActiveSupport::Dependencies.clear
 end
end
Spork.each_run do
end
