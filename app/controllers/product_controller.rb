class ProductController < ApplicationController

  # GET /products?available=true
  def get_products
    if (params[:available] == "true")
      products = Product.where("inventory_count > ?", 0)
    else
      products = Product.all      
    end
    json_response(products)
  end

  # GET /products/:id
  def get_product
    product = Product.find(params[:id])
    json_response(product)
  end

  # POST /products
  def create_product
    product = Product.create!(product_params)
    json_response(product, :created)
  end

  # PUT /product/:id
  def update_product
    product = Product.find(params[:id])
    product.update(product_params)
    json_response(product)
  end

  private

  def product_params
    params.permit(:title, :price, :inventory_count)
  end
end
