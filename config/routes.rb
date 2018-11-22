Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: "emails#index"
  resources :tasks, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # delete 'emails/:id', to: 'emails#destroy', as: :email
  resources :emails
end
