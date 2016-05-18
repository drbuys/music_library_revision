require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require_relative('./controller_artist.rb')
require_relative('./controller_album.rb')
