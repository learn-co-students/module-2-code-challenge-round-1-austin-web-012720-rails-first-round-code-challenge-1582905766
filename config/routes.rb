Rails.application.routes.draw do
  get 'heroine_power/index'

  get 'heroine_power/new'

  get 'heroine_power/show'

  get 'heroine_power/create'

  resources :powers
  resources :heroines 
end
