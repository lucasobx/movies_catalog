Rails.application.routes.draw do
  root 'home#index'
  resources :movie_genres
  resources :movie_directors
  resources :movies
end
