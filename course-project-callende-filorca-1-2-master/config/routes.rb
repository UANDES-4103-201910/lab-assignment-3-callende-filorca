Rails.application.routes.draw do
  get 'index/home_page'
	 root to: 'index#home_page'
  resources :comments
  resources :posts
  resources :walls
  resources :users
  resources :admins
  resources :super_admins
  resources :blacklists
  resources :admin_profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
