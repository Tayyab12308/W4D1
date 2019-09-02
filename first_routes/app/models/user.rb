# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :text             not null
#

class User < ApplicationRecord
  validates :username, presence: true #, unique: true

  has_many :artworks,
    foreign_key: :artist_id,
    class_name: :Artwork 
    # unique: true

  has_many :views,
  foreign_key: :viewer_id,
  class_name: :ArtworkShare,
  presence: true

end
