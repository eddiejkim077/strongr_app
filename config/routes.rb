Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#show', page: 'home'
  resources :pages, only: :show

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get '/login', to: 'sessions#new'

  resources :plans do
    resources :exercises, shallow: true
  end

  patch '/toggle_day/:plan_id/:day_idx', to: 'plans#toggle', as: 'toggle_day' 
end


