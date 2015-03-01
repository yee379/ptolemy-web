json.array!( @nodes ) do | json, name |
  json.id   name
  if name =~ /^swh-/
    json.type   'switch'
    json.size   15
  elsif name =~ /^ap-/
    json.type   'ap'
    json.size   12
  elsif name =~ /^rtr-/
    json.type   'router'
    json.size   20
  else
    json.type   'host'
    # json.type   'unknown'
    json.size   8
  end
end