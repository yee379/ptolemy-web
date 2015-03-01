json.array!(@ipslas) do |i|
  json.extract! i, :device, :sla, :test_type, :target_address, :created_at, :updated_at
end