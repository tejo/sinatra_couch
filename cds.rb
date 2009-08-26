require 'rubygems'
require 'sinatra'
require 'rest_client'
require 'json'
require 'helpers'

#ROOT_URL = "http://www.eeecooks.com"
#DEFAULT_QUERY = "type:Recipe"
#
#configure :test do
#  @@db = "http://localhost:5984/eee-test"
#end
#
#configure :development, :production do
#  @@db = "http://localhost:5984/eee"
#end

helpers do
  include Cds::Helpers
end

if ENV['RACK_ENV'] != 'test'
  before do
    content_type 'text/html', :charset => 'UTF-8'
  end
end

get '/' do
 'bla'
end