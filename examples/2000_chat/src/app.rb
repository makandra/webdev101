require 'sinatra'

get '/channel' do
  @messages = File.read('messages.txt').lines
  erb :channel
end

get '/send' do
  message = params['message']
  File.open('messages.txt', 'a') { |f| f.puts message }
  redirect '/channel'
end
