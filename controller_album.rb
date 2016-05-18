require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require_relative('./models/album')
require_relative('./models/artist')

# get '/albums' do
#   return 'Hello World'
# end

get '/albums/new' do
  #NEW
  @artists = Artist.all()
  erb(:'album/new')
end

get '/albums' do
  #INDEX
  @albums = Album.all()
  # binding.pry
  erb(:'album/index')
end

post '/albums' do
  #CREATE
  # binding.pry
  @album = Album.new(params)
  @album.save()
  erb(:'album/create')
end

get '/albums/:id' do
  #SHOW
  @album = Album.find(params[:id]) #dynamic
  # binding.pry
  erb(:'album/show')
end

get '/albums/:id/edit' do
  #EDIT
  @album = Album.find(params[:id])
  erb(:'album/edit')
end

put '/albums/:id' do
  #UPDATE
  @album = Album.update(params)
  # binding.pry
  redirect to("/albums/#{params[:id]}")
end

delete '/albums/:id' do
  #DELETE
  Album.destroy(params[:id])
  redirect to('/albums')
end
