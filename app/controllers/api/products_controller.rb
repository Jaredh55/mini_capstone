class Api::ProductsController < ApplicationController
  def animals
    @animals = Product.all
    render "animals_view.json.jbuilder"
  end

  def animal_1
    @animal = Product.find(1)
    render 'animal_1view.json.jbuilder'
  end

  def animal_2
    @animal = Product.find(2)
    render 'animal_2view.json.jbuilder'
  end

  def animal_3
    @animal = Product.find(3)
    render 'animal_3view.json.jbuilder'
  end

  def animal_4
    @animal = Product.find(4)
    render 'animal_4view.json.jbuilder'
  end

  def animal_5
    @animal = Product.find(5)
    render 'animal_5view.json.jbuilder'
  end

  def animal_6
    @animal =Product.find(6)
    render 'animal_6view.json.jbuilder'
  end

end
