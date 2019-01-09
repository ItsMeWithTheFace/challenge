class CartController < ApplicationController

  # GET /cart
  def get_carts
    @carts = Cart.all # get the ones you own
    json_response(@carts)
  end

  # GET /cart/:id (calculate total)
  def get_cart
    @cart = Cart.find(params[:id])
    @cart_products = CartProduct
      .where(:cart_id => params[:id])
    
    
    json_response({})
  end


  # GET /cart/:id/purchase

  # POST /cart
  def create_cart
    @cart = Cart.create!({
      fulfilled: false
    })

    json_response(@cart, :created)
  end

  # PUT /cart/:id/add/:product_id

  # PUT /cart/:id/remove/:product_id

end
