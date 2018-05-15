Rails.application.routes.draw do
  namespace :api do
    get '/animals' => 'products#index'
    post '/animals' => 'products#create'
    get '/animals/:id' => 'products#show'
    patch '/animals/:id' => 'products#update'
    delete '/animals/:id' => 'products#destroy'
  end
end
