Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :dishes do 
      resources :ingredients
    end
  end

  # restaurants/:id/dishes
  # restaurants/:id/dishes/:dish_id
end
