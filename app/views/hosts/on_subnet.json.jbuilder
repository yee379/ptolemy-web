json.array!( @arps ) do |a|
  json.extract! a, :hostname, :seen_on
  json.ip_address  a[:ip_address].to_s
end
