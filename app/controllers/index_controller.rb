

get '/' do
  @shares = Share.all
  @gravatar = current_user.gravatar if current_user
  erb :index
end

