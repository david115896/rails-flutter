class Themelist < ApplicationRecord

    belongs_to :activity
    belongs_to :theme, optional: true
end
