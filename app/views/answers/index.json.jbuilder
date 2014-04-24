json.array!(@answers) do |answer|
  json.extract! answer, :id, :student_id, :homework_id, :page_id, :content, :status
  json.url answer_url(answer, format: :json)
end
