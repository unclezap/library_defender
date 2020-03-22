Rails.application.routes.draw do
  resources :loud_children
  resources :junior_librarians
  resources :monsters
  resources :defenders
  resources :levels
  resources :libraries
  resources :games
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
