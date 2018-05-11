require 'unirest'

#INDEX ACTION
# response = Unirest.get("http://localhost:3000/api/animals")
# puts JSON.pretty_generate(response.body)

# SHOW ACTION
# response = Unirest.get('http://localhost:3000/api/animals/1')
# puts JSON.pretty_generate(response.body)

# CREATE ACTION
# response = Unirest.post("http://localhost:3000/api/animals", parameters: {name: "Trash Panda", price: 1, description: "Eats trash", image_url: "https://i.imgur.com/7R9SMwF.jpg"})
# puts JSON.pretty_generate(response.body)

# UPDATE ACTION
animal_id = 9
runner_params = {
                  price: 1
                }
response = Unirest.patch(
                          "http://localhost:3000/api/animals/#{animal_id}",
                          parameters: runner_params
                          )
animal_hash = response.body
puts JSON.pretty_generate(animal_hash)

# DESTROY ACTION
# animal_id = 8
# response = Unirest.delete("http://localhost:3000/api/animals/#{animal_id}")
# data = response.body
# puts JSON.pretty_generate(data)

                            









