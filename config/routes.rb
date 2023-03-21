Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :restaurants, only: [:index, :show, :destroy] do
    resources :pizzas, only: [:index]
    resources :restaurant_pizzas, only: [:create]
  end

  resources :pizzas, only: [:index]
end
