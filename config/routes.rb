Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/animals' => 'products#animals'
    get '/animals1' => 'products#animal_1'
    get '/animals2' => 'products#animal_2'
    get '/animals3' => 'products#animal_3'
    get '/animals4' => 'products#animal_4'
    get '/animals5' => 'products#animal_5'
    get '/animals6' => 'products#animal_6'
  end
end
