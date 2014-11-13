
get '/users/sign_up' do
  erb :sign_up
end

post '/users/sign_up' do
  user = User.new
  form_data = params[:user]
  user.username = form_data[:username]
  user.email
  user.password = form_data[:password] if password_matches?(form_data)
  
  if !password_matches?(form_data)
    @message = "Your Passwords Must Match"
    erb :sign_up
  elsif user.save
    session[:user_id] = user.id
    redirect '/'
  else
    @message = user.errors.messages
    erb :sign_up
  end
end

get '/users/sign_in' do

  erb :sign_in
end

post '/users/sign_in' do
  user = User.find_by( username: params[:user][:username])

  if user.password == params[:user][:password]
    session[:user_id] = user.id
    redirect '/'
  else
    @message = "Incorrect Password"
    erb :sign_in
  end
end




def password_matches?(form_data)
  if form_data[:password] == form_data[:password_confirm]
    true
  else
    false
  end
end