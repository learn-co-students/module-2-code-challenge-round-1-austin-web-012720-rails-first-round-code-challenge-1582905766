Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :edit, :update] 
  resources :heroines, only: [:index, :show, :new, :create, :destroy, :edit, :update] 
end


# , only: [:index, :show, :new] 
