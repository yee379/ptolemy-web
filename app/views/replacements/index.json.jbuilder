json.array!(@replacements) do |replacement|
  json.extract! replacement, :entity__meta_id, :type, :quantity, :hardware_id, :replacement_id
  json.url replacement_url(replacement, format: :json)
end