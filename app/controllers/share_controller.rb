get '/shares/new' do
  erb :new_share
end

post '/shares/new' do 

  @song = Song.new(title: params[:songs][:title], artist: params[:songs][:artist], link: params[:songs][:link])

  if @song.save
    @share = Share.new(user_id: '#{current_user.id}', song_id: @song.id)
    @share.save
  else
    puts "saving failed!"
    erb :new_share
  end

end
