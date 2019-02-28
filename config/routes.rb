Rails.application.routes.draw do
  get 'careers/index'
  get 'careers/find'
  devise_for :users
  # resources :dashboards, only: [:show, :update]
  get "dashboards/:user_id", to: "dashboards#show", as: "dashboard"
  root to: 'pages#home'
  resources :surveys, only: [:index, :show]
  resources :answers, only: [] do
    resources :users_answers, only: [:create]
  end
  resources :personalities_riasec, only: [:show]
  resources :careers, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
