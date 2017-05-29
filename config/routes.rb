Rails.application.routes.draw do
  get 'claims/new'

  get 'claims/create'

  devise_for :users
  root 'tdy_requests#index'
  resources :tdy_requests
  resources :users
  get "/fetch_requests" => 'tdy_requests#get_requests', as: 'fetch_requests'
  resources :claims do
    resources :legs
  end
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
