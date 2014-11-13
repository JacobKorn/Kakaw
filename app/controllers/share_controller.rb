get '/shares/new' do
  erb :new_share
end

post '/shares/new' do 

  @song = Song.new(title: params[:song][:title], artist: params[:song][:artist], link: params[:song][:link])

  if @song.save
    @share = Share.new(user_id: "#{current_user.id}", song_id: @song.id)
    @share.save
  else
    puts "saving failed!"
    erb :new_share
  end

  redirect '/'

end

post '/shares/:id/reshare' do
  reshare = Share.new
  reshare.user_id = current_user.id
  reshare.song_id = params[:id]
  reshare.save

  redirect to('/users/#{current_user.id}/profile')

end