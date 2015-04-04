require 'sinatra'

methods = {
  'basic' => :basic_herp
}

get '/' do
  erb :index
end

get '/logan' do
  paragraph_count = params[:paragraphs].to_i || 1
  output_method = methods[params[:type]] || :basic_herp
  ipsum(paragraph_count, output_method)
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
