json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :recyclable
  json.url item_url(item, format: :json)
end
