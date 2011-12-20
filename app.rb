require 'sinatra'

set :public_folder, File.dirname(__FILE__)

get '/' do
  'Hello world! mos'
end

post '/test' do
system("cd #{File.dirname(__FILE__)}; date >> test.log")

post '/stagingdeploy' do
  system("cd #{File.dirname(__FILE__)+"/../emall"};cap staging deploy ")
  'Cap staging deploy using capistrano' 
end
