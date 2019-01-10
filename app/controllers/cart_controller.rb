class CartController < ApplicationController
  before_action :authenticate_user

  # GET /cart
  def get_carts
    carts = Cart.where(:user_id => current_user.id, :fulfilled => false) # get the ones you own
    json_response(carts)
  end

  # GET /cart/:id (calculate total)
  def get_cart
    cart = Cart.find(params[:id])
    total = cart.product.reduce(0){ |acc, item| acc + item['price'] }

    json_response({ products: cart.product, total: total })
  end

  # GET /cart/:id/purchase
  def purchase
    cart = Cart.find(params[:id])
    success = true

    # Purchase all items in cart as one transaction
    begin
      Product.transaction do
        cart.product.each do |product|
          curr_product = Product.find(product.id)
          if (curr_product.inventory_count <= 0)
            raise "Error"
          else
            curr_product.update!(inventory_count: curr_product.inventory_count - 1)
          end
        end
      end
    rescue Exception
      success = false
    end

    if success
      cart.update(fulfilled: true)
      json_response(cart)
    else
      json_response({message: "Not enough inventory"}, :not_acceptable)
    end
  end

  # POST /cart
  def create_cart
    cart = Cart.create!({
      fulfilled: false,
      user_id: current_user.id
    })

    json_response(cart, :created)
  end

  # PUT /cart/:id/add/:product_id
  def add_product
    cart = Cart.find(params[:id])
    
    # only update cart that's yours
    if cart.user_id == current_user.id
      product = Product.find(params[:product_id])
      cart.product << Product.find(params[:product_id])
      json_response(product, :created)
    else
      json_response({message: "Unauthorized"}, :unauthorized)
    end
  end

  # PUT /cart/:id/remove/:product_id
  def remove_product
    cart = Cart.find(params[:id])

    # only update cart that's yours
    if cart.user_id == current_user.id
      cart.product.delete(Product.find(params[:product_id]))
      json_response({message: "Success"})
    else
      json_response({message: "Unauthorized"}, :unauthorized)
    end
  end
end
