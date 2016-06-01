json.array!(@resources) do |resource|
  json.extract! resource, :id, :name, :function, :alocation
  json.url resource_url(resource, format: :json)
end
