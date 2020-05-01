json.extract! trip, :id, :city_id, :date_start, :date_end, :cost, :activity_ids
json.url trip_url(trip, format: :json)
