require 'sinatra'

get '/purple_oyster' do
  @timestamp = Time.now
  @test_output = (%x( sudo bats /vagrant/test/00*.bats )).gsub("\n","<br>")
  erb :index
end
