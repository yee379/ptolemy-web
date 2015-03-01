json.array!(@devices) do |d|
  json.extract! d, :created_at, :updated_at
  json.device  d.device
  json.member_count  d.member_count
  json.members   d.members
  json.location  d.location
  json.type  d.device_type
  json.groups  d.groups
  json.categories  d.categories
end