# json.partial! @animal, partial: "animal", as: :animal

json.id @animal.id
json.name @animal.name
json.price @animal.price
json.description @animal.description
json.image_url @animal.image_url
json.discount @animal.is_discounted?
json.tax @animal.tax
json.total @animal.total
json.supplier @animal.supplier


json.formatted do
  json.price number_to_currency(@animal.price)
  json.tax number_to_currency(@animal.tax)
  json.total number_to_currency(@animal.total)
end