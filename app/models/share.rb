class Share < ActiveRecord::Base
  # Remember to create a migration!

  belongs_to :user
  belongs_to :song

end
