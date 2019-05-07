Rails.application.routes.draw do
  resources :ticket_types
  resources :ticket_orders
  resources :tickets
  resources :events
  resources :places
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
