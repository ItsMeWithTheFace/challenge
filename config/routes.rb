Rails.application.routes.draw do
  root 'home#index'

  post 'user_token' => 'user_token#create'

  post 'users/create' => 'user#create_user'

  get 'products' => 'product#get_products'
  get 'products/:id' => 'product#get_product'
  post 'products' => 'product#create_product'
  put 'products/:id' => 'product#update_product'

  get 'cart' => 'cart#get_carts'
  get 'cart/:id' => 'cart#get_cart'
  get 'cart/:id/purchase' => 'cart#purchase'
  post 'cart' => 'cart#create_cart'
  put 'cart/:id/add/:product_id' => 'cart#add_product'
  put 'cart/:id/remove/:product_id' => 'cart#remove_product'

end
