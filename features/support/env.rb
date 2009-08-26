ENV['RACK_ENV'] = 'test'

# NOTE: This must come before the require 'webrat', otherwise
# sinatra will look in the wrong place for its views.
require File.dirname(__FILE__) + '/../../cds'

Sinatra::Application.app_file = File.join(File.dirname(__FILE__), *%w[.. .. cds.rb])

require 'rubygems'
require 'spec/expectations'
require 'webrat'

Webrat.configure do |config|
  config.mode = :sinatra 
end


World do
  Webrat::SinatraSession.new
end


