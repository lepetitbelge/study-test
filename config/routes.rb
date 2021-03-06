Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :bugs, only: %i[index new show create edit update destroy] do
    resources :fixes, only: %i[create edit destroy]
  end
end
