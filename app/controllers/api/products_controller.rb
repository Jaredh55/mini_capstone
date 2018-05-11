class Api::ProductsController < ApplicationController
  def index
    @animals = Product.all
    render 'index.json.jbuilder'
  end 

  def show
    animal_id = params[:id]
    @animal = Product.find(animal_id)
    render 'show.json.jbuilder'
  end

  def create
    @animal = Product.new(
                          name: params[:name],
                          price: params[:price],
                          description: params[:description],
                          image_url: params[:image_url]
                          )
    @animal.save
    render 'show.json.jbuilder'
  end 

  def update
    animal_id = params[:id]
    @animal = Product.find(animal_id)

    @animal.name = params[:name] || @animal.name
    @animal.price = params[:price] || @animal.price
    @animal.description = params[:description] || @animal.description
    @animal.image_url = params[:image_url] || @animal.image_url

    @animal.save
    render 'show.json.jbuilder'
  end 

  def destroy
    animal_id = params[:id]
    @animal = Product.find(animal_id)
    @animal.destroy
    render json: {message: "Animal successfully removed."}
  end 
end






