Rails.application.routes.draw do
  resources :compras
  resources :clientes
  resources :cidades
  resources :pacotes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
