class Tripactivity < ApplicationRecord
    belongs_to :activity
    belongs_to :trip, optional: true

    after_initialize :default_values

  private
    def default_values
      self.ongoing ||= true
    end
end
