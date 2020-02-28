Rails.application.routes.draw do
  resources :heroine_powers
  resources :powers
  resources :heroines  

  post 'powers/:id/edit', to: 'powers#edit'
  get 'powers/:id/show', to: 'powers#show'
end
