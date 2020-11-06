Rails.application.routes.draw do
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  root to: 'cocktails#index'

  resources :cocktails, only: [:new, :create, :index, :show] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: :destroy



  # # Cocktails - index, show, new, create
  #   # GET "cocktails"
  #   # GET "cocktails/42"
  #   # GET "cocktails/new"
  #   # POST "cocktails"
  # # Doses - within the cocktails - new, create
  #   # GET "cocktails/42/doses/new"
  #   # POST "cocktails/42/doses"
  # # outside the cocktail - DELETE "doses/25"
end
