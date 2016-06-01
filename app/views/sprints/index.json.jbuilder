json.array!(@sprints) do |sprint|
  json.extract! sprint, :id, :initial_date, :final_date
  json.url sprint_url(sprint, format: :json)
end
