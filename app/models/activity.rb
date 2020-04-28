class Activity < ApplicationRecord
    belongs_to :city
    has_many :tripactivities
    has_many :photos

    def self.import(file)
    	CSV.foreach(file.path, headers: true) do |row|
			activities_hash = row.to_hash
			activities_hash[:city] = City.find_by(name: row[4])
			activities_hash[:activities_category] = ActivitiesCategory.where(name: row[5]).first
			Activity.create! activities_hash
		end
	end
end
