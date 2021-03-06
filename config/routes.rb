Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "commutes#index"

resources :reviews

  resources :commutes do
    resources :reviews
  end

  namespace :api do
    namespace :v1 do
      resources :commutes
    end
  end
end
