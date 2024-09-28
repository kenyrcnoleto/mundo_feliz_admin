Rails.application.routes.draw do
  
  #Forma de fazer a rota pedido_produtos ficar dentro de produtos
  resources :pedidos do
  resources :pedido_produtos
  end
  resources :clientes
  resources :produtos 
  #busca o controller chamado home e método index;
  root to: 'home#index'
  get '/home', to: 'home#index'

  #resources coloca todas as rotas padrões
  resources :tipo_produtos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
