# Homepage (Root path)
get '/' do
  @tracks = Track.all
  erb :index
end

get '/new' do
  erb :new
end

post '/new' do
  @track = Track.new(
    title: params[:title],
    artist: params[:artist],
    url: params[:url]
  )
  if @track.save
    redirect '/'
  else
    erb :'/new'
  end
end
