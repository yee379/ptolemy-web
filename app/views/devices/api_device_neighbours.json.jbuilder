json.array!(@neighbours) do |n|
  json.extract! n, :device, :physical_port, :peer_device, :peer_physical_port, :updated_at
end