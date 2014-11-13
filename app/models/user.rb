class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :username, :email, :password, presence: true 
  validates :username, :email, uniqueness: true

  has_many :shares
  has_many :songs, :through => :shares

  def gravatar
  	hash = Digest::MD5.hexdigest(self.email.downcase)
  	img_src = "http://www.gravatar.com/avatar/#{hash}"
  end

end
