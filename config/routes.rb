
Rails.application.routes.draw do
  mount API => '/'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :appointments do
<<<<<<< HEAD

=======
>>>>>>> cca1395ba6ca82511346e11a44cc0aa127a394e1
    member do
      get 'repeat_weekly'
      get 'repeat_monthly'

    end
  end

<<<<<<< HEAD


=======
>>>>>>> cca1395ba6ca82511346e11a44cc0aa127a394e1
  root 'welcome#index'



end
