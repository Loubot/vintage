Vintage::Application.routes.draw do
  resources :merchants
  resources :shops

  

  root :to => 'shops#index'
end
