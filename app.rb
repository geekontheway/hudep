require 'sinatra'

set :public_folder, File.dirname(__FILE__)

get '/' do
  'Hello world! mos'
end

post '/test' do
  system("cd #{File.dirname(__FILE__)}; touch sinatratest.md ")
  'Test if sinatra works' 
end