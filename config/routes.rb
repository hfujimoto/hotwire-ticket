Rails.application.routes.draw do
  resources :tickets do
    resources :comments, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tickets#index'
end
