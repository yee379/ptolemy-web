json.array!(@devices) do |d|

  json.device d['context']['device']
  json.percent_up d.percent_uptime()
  json.extract!( d, :created_at, :updated_at )

end