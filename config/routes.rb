Rails.application.routes.draw do
  root to: "toppages#index"
  
  resources :tasks, only: [:index, :new, :create, :edit, :update, :destroy]
end
