class Song < ActiveRecord::Base
  # Remember to create a migration!
  has_many :shares
  has_many :users, :through => :shares
end
