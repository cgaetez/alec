json.array!(@users) do |user|
  json.extract! user, :id, :document_id_id, :first_name, :last_name, :date_of_birth, :picture, :background, :status
  json.url user_url(user, format: :json)
end
