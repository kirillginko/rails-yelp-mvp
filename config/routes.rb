Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :restaurants
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: 'new_restaurant_review'
  get 'restaurants/:restaurant_id/reviews', to: 'reviews#index', as: 'reviews'
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: 'restaurant_reviews'
end
