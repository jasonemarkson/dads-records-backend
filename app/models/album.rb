class Album < ApplicationRecord
    belongs_to :artist
    validates :title, presence: true, uniqueness: true
    validates :year, presence: true
    validates :album_cover, presence: true
    validates :artist_id, presence: true
end
