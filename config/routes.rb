Rails.application.routes.draw do
  devise_for :users
  root "whats_for_lunch#index"

  resources :restaurants do
    resources :locations
  end
end
