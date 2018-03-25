require 'sinatra'
require 'sinatra/reloader'

get '/hello/:name' do |n|
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params['name'] is 'foo' or 'bar'
  #"Hello #{params['name']}!"
  "hello #{n}"
end

get '/' do
  code = "<%= Time.now %>"
  erb code
end

get '/tweet/new' do
  @title = "こんにちは"
  erb :index
end
