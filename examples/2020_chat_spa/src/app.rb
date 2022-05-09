require 'sinatra'

get '/' do
  erb(:app)
end

get '/messages.json' do
  content_type :json
  cache_control :no_store
  send_file 'messages.json'
end

post '/send' do
  messages = File.read('messages.json')
  messages = JSON.parse(messages)
  messages << params['message']
  messages = JSON.generate(messages)
  File.write('messages.json', messages)
  halt 201
end
