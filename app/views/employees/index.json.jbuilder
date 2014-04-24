json.array!(@employees) do |employee|
  json.extract! employee, :id, :user_id, :school_id, :relationship, :status
  json.url employee_url(employee, format: :json)
end
