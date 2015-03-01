json.array!(@ports) do |p|
  json.extract! p, :device, :physical_port
end
