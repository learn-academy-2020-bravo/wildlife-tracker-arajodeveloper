class Sighting < ApplicationRecord
    belongs_to :animal, optional:true
    validates :latitude, :longtitude, :date, presence: true
end
