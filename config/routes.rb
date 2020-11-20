Rails.application.routes.draw do
  root to: 'coctails#index'
  resources :cocktails, only: [ :index, :show, :create, :new ] do
    resources :doses, only: [ :new, :create]
  end
  resources :doses, only: [ :destroy ]
end
