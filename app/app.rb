require 'sinatra/base'
require_relative 'models/link'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Hello world!'
  end

  get '/links' do
    @links = Link.all
    p @links
    erb :links
  end
end
