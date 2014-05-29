Vintage::Application.routes.draw do
  resources :merchants
  resources :shops

  

  get 'shops'         => 'shop_controller#shops',       :as => 'shops'
end
