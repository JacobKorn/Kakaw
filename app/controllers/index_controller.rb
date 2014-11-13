

get '/' do
  @shares = Share.all
  
  erb :index
end

