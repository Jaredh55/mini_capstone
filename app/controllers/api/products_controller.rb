class Api::ProductsController < ApplicationController
  def index
      @animals = Product.all
      search_term = params[:search]
      
        if search_term
          @animals = Product.where("name iLIKE ? OR description iLIKE ?", "%#{search_term}%", "%#{search_term}%")
        end


        sort_attribute = params[:sort_by]
        sort_order = params[:sort_order]


        if sort_attribute && sort_order
          @animals = @animals.order(sort_attribute => sort_order)
        elsif sort_attribute
          @animals = @animals.order(sort_attribute => :asc)
        else
          @animals = @animals.order(:id => :asc)
        end


      render 'index.json.jbuilder'

  end 


  def create
    @animal = Product.new(
                          name: params[:name],
                          price: params[:price],
                          description: params[:description],
                          supplier_id: params[:supplier_id]
                          )
    @animal.save
    render 'show.json.jbuilder'
  end 

  def show
    puts "headers: #{request.headers["Authorization"]}"
    animal_id = params[:id]
    @animal = Product.find(animal_id)
    render 'show.json.jbuilder'
  end
  
  def update
    animal_id = params[:id]
    @animal = Product.find(animal_id)

    @animal.name = params[:name] || @animal.name
    @animal.price = params[:price] || @animal.price
    @animal.description = params[:description] || @animal.description
    @animal.supplier_id = params[:supplier_id] || @animal.supplier_id


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






