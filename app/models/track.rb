class Track < ActiveRecord::Base

  validates :title, :artist, presence: true

end
