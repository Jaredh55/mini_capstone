json.id animal.id
json.name animal.name
json.price animal.price
json.tax animal.tax
json.total animal.total
json.image_url animal.image_url

json.images do
  json.array! animal.images, partial: "api/images/image", as: :image #using array partial syntax since it is collection
end

json.description animal.description
json.discount animal.is_discounted?
json.formatted do
  json.price number_to_currency(animal.price)
  json.tax number_to_currency(animal.tax)
  json.total number_to_currency(animal.total)
end

json.supplier do
  json.partial! animal.supplier, partial: "api/suppliers/supplier", as: :supplier
end 










