json.array! @organizations.each do |organization|
  json.id organization.id
  json.name organization.name
  json.hourly_rate organization.hourly_rate
end
