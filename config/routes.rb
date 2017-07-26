Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "commutes#index"

  resources :commutes do
    resources :reviews do
      resources :votes
    end
  end


  namespace :api do
    namespace :v1 do
      resources :commutes
    end
  end
<<<<<<< HEAD
=======

>>>>>>> 333a69310b8535ac6a542bbefdc899ea8e903946
end
