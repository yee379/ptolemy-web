json.array!(@devices) do |d|
  json.extract! d, :created_at, :updated_at
  json.device  d.device
  json.member_count  d.member_count
  json.members   d.members
  json.location  d.location
  # ap units aren't registered in ipam, so we overload settings here
  if d.device.start_with? 'ap-'
    json.type 'wireless'
    json.groups ['ocio']
    json.categories ['visitor']
  else
    json.type  d.device_type
    json.groups  d.groups
    json.categories  d.categories
  end
end