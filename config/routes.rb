Vintage::Application.routes.draw do
  resources :merchants do
  	resources :shops
  end
  resources :shops do
  	resources :items
  end
  resources :items do
  	resources :photos
  end
  

  root :to => 'shops#index'
end
