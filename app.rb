require 'sinatra/base'
require './lib/link.rb'

class BM < Sinatra::Base

  get '/' do
    'Hello BM!'
  end

  get '/links' do
  @link = Link.first(title: 'Makers Academy')
  erb :links
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
