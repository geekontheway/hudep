
require 'sinatra'

set :public_folder, File.dirname(__FILE__)

get '/' do
  'Hello world! mos'
end
get '/another' do
  'Another Hello world!'
end
post '/test' do
system("cd #{File.dirname(__FILE__)}; date >> test.log")
end

post '/stagingdeploy' do
  system("cd #{File.dirname(__FILE__)+"/../emall"};cap staging deploy ")
  'Cap staging deploy using capistrano' 
end
