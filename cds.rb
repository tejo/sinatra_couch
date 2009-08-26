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

DB = 'http://localhost:5984/cd'

get '/cds/:_id' do
  data = RestClient.get "#{DB}/#{params[:_id]}"
  result = JSON.parse(data)
  %Q{
<h1>#{result['title']}</h1>
<p>by #{result['artist']}</p>
<p>#{result['tracks']}</p>
<p>navigation and links to recipes would go here...</p>
<div>
</div>
}
end