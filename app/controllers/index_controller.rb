

get '/' do
  @user = User.first
  @message = "Hellow Kawkillites"
  
  erb :index
end

