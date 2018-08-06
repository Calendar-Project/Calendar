
Rails.application.routes.draw do
  mount API => '/'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :appointments do
<<<<<<< HEAD
    member do
      get 'repeat_weekly'
      get 'repeat_monthly'
      get 'search'
    end
  end
=======
  member do
    get 'repeat_weekly'
    get 'repeat_monthly'
  end
end
>>>>>>> ce3cc722ea14c7c6e5f633020c82410435ef1938
  root 'welcome#index'



end
