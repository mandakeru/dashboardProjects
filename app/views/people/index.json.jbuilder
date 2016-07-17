json.array!(@people) do |person|
  json.extract! person, :id, :name, :birth, :phone, :cpf, :rg
  json.url person_url(person, format: :json)
end
