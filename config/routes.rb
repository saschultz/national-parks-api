Rails.application.routes.draw do
  resources :parks do
    collection do
      get :search
    end
    resources :hikes
  end
end
