Rails.application.routes.draw do
  resources :comentarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #VotaPrato::Application.routes.draw do
  resources :comentarios
  #  match 'ola' => 'ola_mundo#index', via: 'get'
  #end
  
  resources :restaurantes
  resources :qualificacoes
  resources :clientes
end
