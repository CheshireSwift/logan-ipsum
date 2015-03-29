require 'sinatra'

get '/' do
  paragraph_count = params[:paragraphs].to_i || 1
  erb :layout , :locals => {
    :paragraph_count => [1, paragraph_count].max,
    :ipsum => 'herp derp logan love jennah'
  }
end
