class List < ApplicationRecord
    has_many :bookmarks
    has_many :movies, through: :bookmarks ,dependent: :destroy
    validates :name, presence: true
    validates_uniqueness_of :name
    has_one_attached :photo
end
