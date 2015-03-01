json.array!(@locations) do |l|

  json.extract! l, :hostname, :site, :rack, :ru, :vendor, :model_number, :serial
  
end
