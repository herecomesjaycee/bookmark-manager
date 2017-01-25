require 'sinatra/base'
<<<<<<< HEAD
require './lib/link.rb'

class BM < Sinatra::Base

  get '/' do
    'Hello BM!'
  end

  get '/links' do
  @link = Link.first(title: 'Makers Academy')
  erb :links
  end

=======
require './app/models/link'

class BookmarkManager < Sinatra::Base
  get '/links' do
    # This uses DataMapper's .all method to fetch all
    # data pertaining to this class from the database
    @links = Link.all
    erb :'links/index'
  end
>>>>>>> 355ca8a6f0e91a1ce38d1b7f699666ec718bf18e
  # start the server if ruby file executed directly
  run! if app_file == $0
end
