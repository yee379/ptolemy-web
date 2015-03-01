json.array!(@transceivers) do |t|

  json.device t['context']['device']
  json.physical_port t['context']['physical_port']
  json.rx t['data']['value']
  json.extract!( t, :created_at, :updated_at )

end