Rails.application.routes.draw do
  resources :powers, only: [:index]
  resources :heroines, only: [:index] 
  resources :heroinepower, only: [:index]
  get '/heroines/show', to: 'heroines#show'
  get '/powers/show', to: 'powers#show'
end
