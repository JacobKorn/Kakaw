
get '/users/sign_up' do
  erb :sign_up
end

post '/users/sign_up' do
  user = User.new
  form_data = params[:user]
  user.username = form_data[:username]
  user.email
  user.password = form_data[:password] if password_matches?(form_data)
  user.save

  redirect '/'

end


def password_matches?(form_data)
  true if form_data[:password] == form_data[:password_confirm]
end