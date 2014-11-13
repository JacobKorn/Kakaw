require 'uri'

class Song < ActiveRecord::Base
  has_many :shares
  has_many :users, :through => :shares

  def self.url_valid?(url)
    if url =~ /\A#{URI::regexp(['http', 'https'])}\z/
      if url =~ /soundcloud/
        true
    else
      false
    end
    end
  end

end
