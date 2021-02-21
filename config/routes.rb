Rails.application.routes.draw do
  root to: 'pages#home'
  get 'history', to: 'pages#history', as: :history

  get 'rice', to: 'crops#rice', as: :rice
  get 'wheat', to: 'crops#wheat', as: :wheat
  get 'corn', to: 'crops#corn', as: :corn

  resources :resources, only: [:index, :show]

  resources :recipes, only: :index do
    collection do
      get :rice
      get :wheat
      get :corn
    end
  end
end
