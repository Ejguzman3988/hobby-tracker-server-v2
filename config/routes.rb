Rails.application.routes.draw do
  resources :days
  resources :daily_stats
  resources :restricted_times
  resources :timers
  resources :categories
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
