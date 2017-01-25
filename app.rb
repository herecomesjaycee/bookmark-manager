require 'rubygems'
require 'sinatra/base'
require 'rspec'
require 'data_mapper'
require './models/link'



class BMM < Sinatra::Base
  get '/' do
    erb :manage
  end

  get '/links' do
    p @link = Link.all
    erb :'links/index'
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/links'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
