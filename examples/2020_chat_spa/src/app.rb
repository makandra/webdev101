require 'sinatra'

get '/' do
  erb(:app)
end

get '/messages' do
  content_type :json
  send_file 'messages.json'
end

post '/send' do
  messages = File.read('messages.json')
  messages = JSON.parse(messages)
  messages << params['message']
  messages = JSON.generate(messages)
  File.write('messages.json', messages)
  send_file 'messages.json'
  halt 201
end
