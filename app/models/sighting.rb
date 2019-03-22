class Sighting < ApplicationRecord
    belongs_to :animal
    validates :animal_id, :date, :time, :region, presence: true
end
