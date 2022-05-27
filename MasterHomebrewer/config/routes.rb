Rails.application.routes.draw do
  resources :score_sheets
  resources :brewers do
    resources :score_sheets
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
