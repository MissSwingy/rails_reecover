Rails.application.routes.draw do
  devise_for :users
  # resources :dashboards, only: [:show, :update]
  get "dashboards/:user_id", to: "dashboards#show", as: "dashboard"
  get 'users_personnalities/:user_id', to: "users_personnalities#show", as: "results"
  root to: 'pages#home'
  # resources :surveys, only: [:index, :show]
  resources :answers, only: [] do
    resources :users_answers, only: [:create]
  end
  resources :surveys, only: [:index, :show] do
    resources :attempts, only: [:new, :create, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
