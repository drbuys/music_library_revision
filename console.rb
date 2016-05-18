require_relative( './models/album' )
require_relative( './models/artist' )

require( 'pry-byebug' )

artist1 = Artist.new( { 'name' => 'Oasis' } ).save();
album1 = Album.new( { 'name' => 'Roll With It', 'artist_id' => artist1.id } ).save();
album2 = Album.new( { 'name' => 'Another album', 'artist_id' => artist1.id } ).save();

artist2 = Artist.new( { 'name' => 'The Smashing Pumpkins' } ).save();
album3 = Album.new( { 'name' => 'Rotten Apples', 'artist_id' => artist2.id } ).save();
album4 = Album.new( { 'name' => 'Gothica', 'artist_id' => artist2.id } ).save();

artist3 = Artist.new( { 'name' => 'Hot Chip' } ).save();
album5 = Album.new( { 'name' => 'The Warning', 'artist_id' => artist3.id } ).save();
album6 = Album.new( { 'name' => 'Made in the dark', 'artist_id' => artist3.id } ).save();
# binding.pry
# nil
