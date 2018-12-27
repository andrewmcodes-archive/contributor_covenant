# frozen_string_literal: true

require "simplecov"
require "pry"

SimpleCov.start do
  add_filter "/spec/"
end

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "contributor_covenant"

unless $LOAD_PATH.include?(File.expand_path("support", __dir__))
  $LOAD_PATH.unshift(File.expand_path("support", __dir__))
end

RSpec.configure do |config|
  config.mock_with :rspec do |mocks|
    mocks.syntax = %i(expect should)
  end
end