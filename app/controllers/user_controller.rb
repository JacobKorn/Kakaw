get '/users/profile/:id' do
  @user = User.find(params[:id])
  @shares = Share.where(user_id: @user.id).reverse
  @gravatar = current_user.gravatar if current_user
  erb :profile
end

