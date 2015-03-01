json.array!(@helpdesks) do |helpdesk|
  json.extract! helpdesk, 
  json.url helpdesk_url(helpdesk, format: :json)
end