json.extract! city, :id, :name

json.activities city.activities do |activity|

    json.(activity, :id, :name_fr, :price)

    json.photos activity.photos do |photo|
        json.(photo, :id, :url, :admin, :post_link)
    end
end
