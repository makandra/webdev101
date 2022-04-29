require 'sinatra'

get '/' do
  @messages = File.read('messages.txt').lines
  erb(:chat)
end

post '/send' do
  message = params['message'] + "\n"
  File.write('messages.txt', message, mode: 'a')
  redirect('/')
end
