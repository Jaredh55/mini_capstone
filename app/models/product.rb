class Product < ApplicationRecord

  belongs_to :supplier

  # def supplier #association method
  #   Supplier.find_by(id: supplier_id) #actually doing self.supplier_id
  # end

  has_many :images
  # def images #association method
  #   Image.where(product_id: self.id)
  # end

  def is_discounted?
    price < 1000 # actually doing self.price
  end

  def tax
    price * 0.09
  end

  def total
    price * 1.09
  end
end
