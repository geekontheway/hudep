require 'sinatra'

#mail
require 'pony'


set :public_folder, File.dirname(__FILE__)

get '/' do
  'Hello world! mos'
   send_file('panda.png')
# blow files will not be sent.
   send_file('ruboto.png')
end
post '/test' do
  system("cd #{File.dirname(__FILE__)}; date >> test.log")
end
post '/stagingdeploy' do
  system("cd #{File.dirname(__FILE__)+"/../emall"};cap staging deploy:setup;cap staging deploy:cold;cap staging deploy")
  'Cap staging deploy using capistrano'
end


#some test
get '/send_file' do
  send_file('panda.png')
end
get '/attachment' do
  attachment "panda.png"
  "store it!"
end
get '/sinatra' do
redirect 'http://www.sinatrarb.com/'
end





