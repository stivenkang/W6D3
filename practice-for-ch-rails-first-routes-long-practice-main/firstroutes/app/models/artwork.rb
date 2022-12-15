# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
    validates :title, :image_url, presence: true, uniqueness: true

    belongs_to :artist,
        class_name: :User

    has_many :shares, 
        foreign_key: :artwork_id, 
        inverse_of: :artwork
end
