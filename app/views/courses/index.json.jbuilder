json.array!(@courses) do |course|
  json.extract! course, :id, :user_id, :school_id, :name, :level, :year, :status
  json.url course_url(course, format: :json)
end
