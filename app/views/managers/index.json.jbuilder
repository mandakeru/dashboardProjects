json.array!(@managers) do |manager|
  json.extract! manager, :id, :name, :function, :area, :boss
  json.url manager_url(manager, format: :json)
end
