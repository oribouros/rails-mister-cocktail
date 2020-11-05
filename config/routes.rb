Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:new, :create, :index, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Cocktails - index, show, new, create
  # root to: 'cocktails#index'
  # resources :cocktails # except: [:destroy, :edit, :update] do
  #   resources :doses, only: [:new, :create]
  # # end
  # # outside the cocktail - DELETE "doses/25"
  # resources :doses, only: [:destroy]

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
