Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :update]
  resources :heroines, only: [:index, :show, :new, :create]

  get '/powers/:id/edit', to: 'powers#edit', as: 'edit_power'
  patch '/power/:id', to: 'powers#update'
end
