json.array!(@deadlines) do |deadline|
  json.extract! deadline, :id, :initial_date, :final_date
  json.url deadline_url(deadline, format: :json)
end
