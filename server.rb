require 'sinatra'

get '/' do
  redirect to('/logan')
end

get '/logan' do
  paragraph_count = params[:paragraphs].to_i || 1
  ipsum(paragraph_count, :basic_herp)
end

def ipsum(paragraph_count, output_method)
  erb :ipsum, locals:  {
    paragraph_count: [1, paragraph_count].max,
    title: nil,
    ipsum: send(output_method)
  }
end

def basic_herp
  'herp derp logan love jennah'
end
