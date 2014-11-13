class CreateSongs < ActiveRecord::Migration
  def change
  	create_table :songs do |t|
  		t.string :artist
  		t.string :title
  		t.string :link
  		t.string :platform
  		t.integer :click_count, default: 0

  		t.timestamps
  	end
  end
end
