require 'rubygems'
require 'nestful'

Nestful.post 'http://localhost:4567/test', :format => :form #=> "body"
