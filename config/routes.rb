Rails.application.routes.draw do
  root 'workouts#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :workouts, only: [:index, :show]

  namespace :api do
    namespace :v1 do
      resources :workouts, only: [:index, :show] do
        resources :comments, only: [:create]
      end
    end
  end
end
