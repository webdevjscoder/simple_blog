Rails.application.routes.draw do
  # root of your website routed with 'root'
  # 'root' looks for 'posts controller'
  # 'index' as main root
  root 'posts#index', as: 'home'

  # Example of regular route:
  get 'about' => 'pages#about', as: 'about'

  # Example of resource route (maps HTTP verbs  to controller actions)
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
