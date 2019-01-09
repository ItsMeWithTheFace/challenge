Rails.application.routes.draw do
  root 'home#index'

  post 'user_token' => 'user_token#create'

  post 'users/create' => 'user#create_user'

  get 'products' => 'product#get_products'
  get 'products/:id' => 'product#get_product'
  post 'products' => 'product#create_product'
  put 'products/:id' => 'product#update_product'

  post 'cart' => 'cart#create_cart'

end
