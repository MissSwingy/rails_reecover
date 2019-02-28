Rails.application.routes.draw do
  get 'personalities_riasec/name'
  get 'personalities_riasec/avatar_f'
  get 'personalities_riasec/avavatar_m'
  get 'personalities_riasec/description'
  devise_for :users
  # resources :dashboards, only: [:show, :update]
  get "dashboards/:user_id", to: "dashboards#show", as: "dashboard"
  root to: 'pages#home'
  resources :surveys, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
