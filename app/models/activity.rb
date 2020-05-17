class Activity < ApplicationRecord
    belongs_to :city
    has_many :tripactivities
	has_many :photos
	
    has_many :themelists, dependent: :destroy
    has_many :themes, through: :themelists

    accepts_nested_attributes_for :themelists,  :allow_destroy => true

    def self.import(file)
    	CSV.foreach(file.path, headers: true) do |row|
			activities_hash = row.to_hash
			activities_hash[:city] = City.find_by(name: row[3])
			activities_hash[:price] = 10
			themes = row[7].split(',')
			themes = []
			row[7].split(',').each do |theme|
				themes << Theme.find_by(name_eng: theme)
			end
			activities_hash[:themes] = themes
			Activity.create! activities_hash
		end
	end
end
