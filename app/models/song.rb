require 'uri'

class Song < ActiveRecord::Base
  has_many :shares
  has_many :users, :through => :shares

  validate :url_valid?

  def url_valid?
    unless link =~ /\A#{URI::regexp(['http', 'https'])}\z/
      errors.add(:link, "Invalid URL!")
    end
  end

end
