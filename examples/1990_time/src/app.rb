require 'sinatra'

get '/now.html' do
  Time.now.to_s
end

