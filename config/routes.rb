Rails.application.routes.draw do
  root 'users#index'
  devise_for :users, as: 'devise'
  resource :home
  # resources :users do
  # 	resources :posts
  # end

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'posts/new', to: '/posts#new'

#root to: 'pages#main'

 resources :posts
end
