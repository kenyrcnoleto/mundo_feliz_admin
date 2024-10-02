Rails.application.routes.draw do
  
  resources :administradors
  #Forma de fazer a rota pedido_produtos ficar dentro de produtos
  resources :pedidos do
    resources :pedido_produtos
  end
  resources :clientes
  resources :produtos 
  
  #resources coloca todas as rotas padrões
  resources :tipo_produtos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/home', to: 'home#index'
  get '/admin', to: 'admin#index'
  get '/login', to: 'login#index'
  post '/login/logar', to: 'login#logar'
  
  get '/login/sair', to: 'login#sair'

  #busca o controller chamado home e método index;
  root to: 'home#index'
end
