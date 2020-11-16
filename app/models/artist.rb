class Artist < ApplicationRecord

belongs_to :user
has_one_attached :image

validates :artist_name, presence: true

end
