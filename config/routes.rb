
Rails.application.routes.draw do
  mount API => '/'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :appointments
  root 'welcome#index'


end
