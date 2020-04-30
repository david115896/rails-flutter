json.extract! city, :id, :name, :image

json.activities city.activities do |activity|

    json.(activity, :id, :name_fr, :price, :description_fr, :website)

    json.photos activity.photos do |photo|
        json.(photo, :id, :url, :admin, :post_link)
    end
end
