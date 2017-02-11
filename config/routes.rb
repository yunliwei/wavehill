Rails.application.routes.draw do
  resources :tests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :admins do
    collection do
      get 'selectdata'
      get 'valilogin'
      get 'deletedata'
      get 'insertdata'
    end
  end

  resources :mains

end
