class City < ApplicationRecord
    has_many :activities
    has_many :trips
    has_many :photos

end
