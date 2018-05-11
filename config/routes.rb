Rails.application.routes.draw do
  namespace :api do
    get '/animals' => 'products#index'
    get '/animals/:id' => 'products#show'
    post '/animals' => 'products#create'
    patch '/animals/:id' => 'products#update'
    delete '/animals/:id' => 'products#destroy'
  end
end
