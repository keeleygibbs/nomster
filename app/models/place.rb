class Place < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :photos

    geocoded_by :address
    after_validation :geocode
    
    validates :name, presence: true, length: { in: 3..50}
    validates :address, presence: true, length: { minimum: 5}
    validates :description, presence: true, length: { in: 5..1000}
end
