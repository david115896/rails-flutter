json.extract! trip, :id, :date, :city_id, :date_start, :date_end, :cost :activities
json.url trip_url(trip, format: :json)
