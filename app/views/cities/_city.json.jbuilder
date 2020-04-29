#json.extract! city, :id, :name, :activities

json.cities @cities do |city|
    json.(city, :id, :image,:name)

    json.activities city.activities do |activity|
        json.(activity, :id, :name_fr)

        json.photos activity.photos do |photo|
            json.(photo, :id, :url, :admin, :post_link)
        end

    end

end
