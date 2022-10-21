Rails.application.routes.draw do
  root "whats_for_lunch#index"

  resources :restaurants
end
