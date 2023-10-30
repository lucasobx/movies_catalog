Rails.application.routes.draw do
  root 'home#index'
  resources :movie_genres
  resources :movie_directors
  resources :movies do
    patch :publish, on: :member
    patch :draft, on: :member
  end
end
