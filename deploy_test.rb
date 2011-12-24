require 'rubygems'
require 'nestful'

Nestful.post 'http://localhost:4567/stagingdeploy', :format => :form #=> "body"