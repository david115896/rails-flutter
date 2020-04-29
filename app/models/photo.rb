class Photo < ApplicationRecord
    belongs_to :city
    belongs_to :activity

    def self.import(file)
    	CSV.foreach(file.path, headers: true) do |row|
			photos_hash = row.to_hash
			photos_hash[:activity] = Activity.find_by(name_fr: row[0])
			photos_hash[:city] = City.find_by(name: row[2])

			Photo.create! photos_hash
		end
	end
end
