class Animal < ApplicationRecord
    has_many :sightings
    accepts_nested_attributes_for :sightings, :allow_destroy => true
    validates :common_name, :latin_name, presence: true 
    validates :common_name, :latin_name, uniqueness: true
    validates :common_name, exclusion: { in: lambda { |animal| [animal.latin_name] } }

end
