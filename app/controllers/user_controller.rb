get '/users/:id' do
  @user = User.find(params[:id])
  @gravatar = current_user.gravatar if current_user
  erb :profile
end

