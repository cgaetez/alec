json.array!(@homeworks) do |homework|
  json.extract! homework, :id, :teacher_id, :course_id, :activity, :title, :content, :status
  json.url homework_url(homework, format: :json)
end
