# Homepage (Root path)
get '/' do
  @tracks = Track.all
  erb :index
end
