json.array!(@schools) do |school|
  json.extract! school, :id, :name, :address, :latitude, :longitude, :url, :picture, :status
  json.url school_url(school, format: :json)
end
