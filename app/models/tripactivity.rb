class Tripactivity < ApplicationRecord
    belongs_to :activity
    belongs_to :trip, optional: true
end
