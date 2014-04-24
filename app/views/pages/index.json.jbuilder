json.array!(@pages) do |page|
  json.extract! page, :id, :homework_id, :title, :content, :status
  json.url page_url(page, format: :json)
end
