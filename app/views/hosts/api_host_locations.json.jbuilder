json.array!(@locs) do |l|
  json.extract! l, :hostname, :site, :rack, :ru
end