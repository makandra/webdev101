require 'sinatra'

get '/channel' do
  @messages = File.read('messages.txt').lines
  erb(:channel)
end

get '/send' do
  message = params['message']
  file = File.open('messages.txt', 'a')
  file.puts(message)
  file.close()
  redirect('/channel')
end
