require 'sinatra'

get '/' do
  erb :layout , :locals => { :ipsum => 'herp derp logan love jennah' }
end

