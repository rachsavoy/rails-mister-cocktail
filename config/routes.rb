Rails.application.routes.draw do
  root 'cocktails#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :show, :new, :create] do
    resources :doses, only: [ :new, :create]
  end
  delete '/doses/:id', to: 'doses#destroy', as: 'dose'
end
