json.array!(@issues) do |issue|
  json.extract! issue, :id, :title, :type, :description, :status
  json.url issue_url(issue, format: :json)
end
