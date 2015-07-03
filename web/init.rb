require 'json'
require 'sinatra'

set server: 'thin'

get '/purple_oyster' do
  erb :index
end
