require 'sinatra/base'
require './lib/bookmarks.rb'

# Bookmark class
class BookmarkApp < Sinatra::Base
  enable :sessions

  get '/bookmarks' do
    @bookmarks = Bookmarks.list

    erb :index
  end

  run! if app_file == $PROGRAM_NAME
end
