Rails.application.routes.draw do
  resources :parks do
    collection do
      get :search
      get :most_hikes
      get :random
    end
    resources :hikes
  end
end
