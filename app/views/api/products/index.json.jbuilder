json.array! @animals.each do |animal|
  json.id animal.id
  json.name animal.name
  json.price animal.price
  json.description animal.description
  json.image_url animal.image_url
end