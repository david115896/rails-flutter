class Trip < ApplicationRecord
    belongs_to :city
    has_many :tripactivities, dependent: :destroy
    has_many :activities, through: :tripactivities

    accepts_nested_attributes_for :tripactivities,  :allow_destroy => true
end
