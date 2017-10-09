Rails.application.routes.draw do
  root 'vote#index'
  get 'vote/index'  => 'vote#index'
  post 'vote/create' => 'vote#create'
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
