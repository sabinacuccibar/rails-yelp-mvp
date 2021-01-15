Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# A visitor can see the list of all restaurants.
# GET '/restaurants', to: "restaurants#index", as: "restaurants"

# # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
# GET '/restaurant/new', to: "restaurant#show", as: "new_restaurant"
# POST '/restaurants', to: "restaurant#create"

# # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
# GET "restaurants/:id", to: "restaurant#show", as: "restaurant"

# # A visitor can add a new review to a restaurant
# GET "restaurants/38/reviews/new", to: "review#new", as: "restaurant_reviews"
# POST "restaurants/38/reviews", to: "review#create", as: "new_restaurant_review"

resources :restaurants, only: [ :index, :show, :create, :new] do
  resources :reviews, only: [ :new, :create]
end

end
