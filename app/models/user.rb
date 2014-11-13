class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :shares
  has_many :songs, :through => :shares

end
