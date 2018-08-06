
Rails.application.routes.draw do
  mount API => '/'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :appointments do
    member do
      get 'repeat_weekly'
      get 'repeat_monthly'
      get 'search'
    end
  end
  root 'welcome#index'



end
