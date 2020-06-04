class Sighting < ApplicationRecord
    belongs_to :animal, optional:true
end
