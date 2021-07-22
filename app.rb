require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark.rb'
require 'pg'

class Bookmark_Manager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @list = Bookmark.list
    erb(:bookmarks)
  end

  get '/bookmarks/add' do
    erb :add_bookmark
  end

  post '/bookmarks' do
    @url = params['url']
    Bookmark.create(url: @url)
    redirect '/bookmarks'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


