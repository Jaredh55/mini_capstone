json.id animal.id
json.name animal.name
json.price animal.price
json.description animal.description
# json.images product.images
json.discount animal.is_discounted?
json.tax animal.tax
json.total animal.total
json.supplier do
  json.partial! animal.supplier, partial: "api/suppliers/supplier", as: :supplier
end 

json.images do
  json.array! animal.images, partial: "api/images/image", as: :image #using array partial syntax since it is collection
end

json.formatted do
  json.price number_to_currency(animal.price)
  json.tax number_to_currency(animal.tax)
  json.total number_to_currency(animal.total)
end