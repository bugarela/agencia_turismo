Rails.application.routes.draw do
  root to: 'clientes#index'
  resources :quartos
  resources :tipo_de_quartos
  resources :hoteis
  resources :restaurantes
  resources :igrejas
  resources :atracoes
  resources :compras
  resources :clientes
  resources :cidades
  resources :pacotes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
