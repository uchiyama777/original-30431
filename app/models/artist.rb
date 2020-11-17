class Artist < ApplicationRecord

has_many :artist_users
has_many :users, through: :room_users
has_one_attached :image

validates :artist_name, presence: true

end
