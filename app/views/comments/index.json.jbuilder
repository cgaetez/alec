json.array!(@comments) do |comment|
  json.extract! comment, :id, :student_id, :homework_id, :page_id, :start_at_character, :end_at_character, :content, :status
  json.url comment_url(comment, format: :json)
end
