require 'sinatra/base'
require './models/link'

class BookmarkManager < Sinatra::Base

  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all # try to access a property

    erb :links
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
