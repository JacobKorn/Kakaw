require 'faker'

User.destroy_all
Song.destroy_all
Share.destroy_all

users = []

10.times do |user|
  user = User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: Faker::Internet.password, avatar: Faker::Avatar.image("kakaw", "200x200", "jpg"))
  users << user
end

puts users

song_urls = ["https://soundcloud.com/1080pcollection/04-idgafam", "https://soundcloud.com/1080pcollection/mongo-skato-turismoc-1",
            "https://soundcloud.com/dimension_uk/movefaster", "http://youtu.be/B9rSBcoX9ak", "http://youtu.be/0TIIu9CERgI",
            "http://youtu.be/RubBzkZzpUA"]

songs = []

20.times do |song|
  song = Song.create(artist: Faker::App.name, title: Faker::Commerce.product_name, link: song_urls.sample, album_art: "http://i.imgur.com/dHiHbqP.png?1")
  songs << song
end

puts songs

40.times do |share|
  share = Share.create(user_id: users.sample.id, song_id: songs.sample.id)
end
