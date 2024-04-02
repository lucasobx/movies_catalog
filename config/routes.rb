Rails.application.routes.draw do
  root 'home#index'
  resources :movie_genres, except: [:destroy]
  resources :movie_directors, except: [:destroy]
  resources :movies, except: [:destroy]
end