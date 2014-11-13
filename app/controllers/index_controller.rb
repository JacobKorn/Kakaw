

get '/' do
  @user = current_user
  @message = "Hellow Kawkillites"
  
  erb :index
end

