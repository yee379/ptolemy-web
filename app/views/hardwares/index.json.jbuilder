json.array!(@hardwares) do |hardware|
  json.extract! hardware, :id, :vendor, :model, :bulletin_url, :available, :end_of_sale, :end_of_support, :price
  json.url hardware_url(hardware, format: :json)
end