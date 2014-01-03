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


  match '/listado_1', :to => 'application#listado_1', :as => 'listado_1'
  match '/listado_2', :to => 'application#listado_2', :as => 'listado_2'
  match '/listado_3', :to => 'application#listado_3', :as => 'listado_3'
  match '/listado_4', :to => 'application#listado_4', :as => 'listado_4'
  match '/listado_5', :to => 'application#listado_5', :as => 'listado_5'
  match '/listado_6', :to => 'application#listado_6', :as => 'listado_6'
  match '/listado_7', :to => 'application#listado_7', :as => 'listado_7'

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
