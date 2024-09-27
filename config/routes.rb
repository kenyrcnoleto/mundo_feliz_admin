Rails.application.routes.draw do
  resources :produtos
  #busca o controller chamado home e método index;
  root to: 'home#index'
  get '/home', to: 'home#index'

  resources :tipo_produtos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
