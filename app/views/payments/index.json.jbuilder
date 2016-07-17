json.array!(@payments) do |payment|
  json.extract! payment, :id, :description, :value, :payment_date, :payment_method
  json.url payment_url(payment, format: :json)
end
