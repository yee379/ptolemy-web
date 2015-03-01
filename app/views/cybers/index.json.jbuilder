json.array!(@cybers) do |cyber|
  json.extract! cyber, 
  json.url cyber_url(cyber, format: :json)
end