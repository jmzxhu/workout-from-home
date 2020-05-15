Rails.application.routes.draw do
  root 'workouts#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :workouts, only: [:index, :show, :create, :new]

  namespace :api do
    namespace :v1 do
      resources :workouts, only: [:index, :show, :create, :new] do
        resources :comments, only: [:create, :index]
      end
      resources :comments, only: [:destroy]
    end
  end
end
