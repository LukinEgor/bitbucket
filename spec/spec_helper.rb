begin
  require "pry-byebug"
rescue LoadError
end
ENV["RAILS_ENV"] = "test"

require 'webmock/rspec'
require 'bitbucket_rest_api'

RSpec.configure do |config|
  config.mock_with :rspec
end
