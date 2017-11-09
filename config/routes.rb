Rails.application.routes.draw do
  get 'ingredients/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:create]
  end

  resources :doses, only: [:edit, :update, :destroy]
  root to: 'cocktails#index'

end
