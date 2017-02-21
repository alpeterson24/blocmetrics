Rails.application.routes.draw do
  resources :registered_applications
  devise_for :users

  namespace :api, defaults: { format: :json } do
    get '/events', to: 'events#preflight', via: [:options]
    resources :events, only: [:create]
  end

  get 'about' => 'welcome#about'
  root "welcome#index"
end
