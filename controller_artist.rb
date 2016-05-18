require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require_relative('./models/artist')

# get '/artists' do
#   return 'Hello World'
# end

get '/artists/new' do
  #NEW
  erb(:'artist/new')
end

get '/artists' do
  #INDEX
  @artists = Artist.all()
  # binding.pry
  erb(:'artist/index')
end

post '/artists' do
  #CREATE
  # binding.pry
  @artist = Artist.new(params)
  @artist.save()
  erb(:'artist/create')
end

get '/artists/:id' do
  #SHOW
  @artist = Artist.find(params[:id]) #dynamic
  # binding.pry
  erb(:'artist/show')
end

get '/artists/:id/edit' do
  #EDIT
  @artist = Artist.find(params[:id])
  erb(:'artist/edit')
end

put '/artists/:id' do
  #UPDATE
  @artist = Artist.update(params)
  # binding.pry
  redirect to("/artists/#{params[:id]}")
end

delete '/artists/:id' do
  #DELETE
  Artist.destroy(params[:id])
  redirect to('/artists')
end
