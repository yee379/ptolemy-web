json.array!(@physical_securities) do |physical_security|
  json.extract! physical_security, :device, :environment_type, :environment, :cabinet
  json.url physical_security_url(physical_security, format: :json)
end