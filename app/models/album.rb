class Album < ApplicationRecord
    belongs_to :artist
    validates :title, presence: true, uniqueness: true
    validates :year, presence: true, numericality: { only_integer: true }, length: { minimum: 4, maximum: 4 }
    validates :album_cover, presence: true
    validates :artist_id, presence: true
end
