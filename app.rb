require('sinatra')
require('sinatra/reloader')
require('./lib/places')
also_reload('lib/**/*.rb')


get('/') do
  @places = Places.all()
erb(:index)
end

post ('/place_form') do
  item = params.fetch('place')
  place = Places.new(item)
  place.store()
erb(:success)
end
