Rails.application.routes.draw do
  namespace :api do
    get '/animals' => 'products#animals'
    get '/chicken' => 'products#animal_1'
    get '/cow' => 'products#animal_2'
    get '/platypus' => 'products#animal_3'
    get '/liger' => 'products#animal_4'
    get '/unicorn' => 'products#animal_5'
    get '/hippo' => 'products#animal_6'
  end
end
