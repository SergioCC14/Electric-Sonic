ElectricSonic::Application.routes.draw do

  resources :users
  resources :sessions

  resources :alumnos do
    collection do
      get :show_in_holder
      get :alta
      get :modificar
    end
  end
  
  resources :profesors do
    collection do
      get :show_in_holder
      get :alta
      get :modificar
    end
  end

  resources :tfgs do
    collection do
      get :show_in_holder
      get :alta
      get :modificar
    end
  end

  resources :tribunals do
    collection do
      get :show_in_holder
      get :alta
      get :modificar
    end
  end

  resources :grupos do
    collection do
      get :show_in_holder
      get :alta
      get :modificar
    end
  end

  match '/listados_in_holder', :to => 'application#listados_in_holder', :as => 'listados_in_holder'
  match '/ayuda', :to => 'application#ayuda', :as => 'ayuda'

  match '/signout', :to => 'sessions#destroy', :as => 'signout'
  match '/sessions', :to => 'sessions#index', :as => 'login', :path => '/login'

  root :to => 'application#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
